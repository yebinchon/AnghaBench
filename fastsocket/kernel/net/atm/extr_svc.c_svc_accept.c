
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int state; struct sock* sk; } ;
struct sock {int sk_err; int sk_ack_backlog; int sk_sleep; int sk_receive_queue; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int vci; int vpi; int itf; } ;
struct TYPE_5__ {TYPE_1__ sap_addr; } ;
struct atmsvc_msg {TYPE_2__ pvc; int sap; int local; int svc; int qos; } ;
struct atm_vcc {int flags; int qos; int sap; int local; int remote; } ;
struct TYPE_6__ {int sk_err; int sk_sleep; } ;


 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_CLOSE ;
 int ATM_VF_HASQOS ;
 int ATM_VF_RELEASED ;
 int ATM_VF_WAITING ;
 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EBUSY ;
 int ERESTARTSYS ;
 int EUNATCH ;
 int O_NONBLOCK ;
 int SS_CONNECTED ;
 int TASK_INTERRUPTIBLE ;
 int TASK_UNINTERRUPTIBLE ;
 int as_accept ;
 int as_reject ;
 int current ;
 int dev_kfree_skb (struct sk_buff*) ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int pr_debug (char*,struct atm_vcc*,struct atm_vcc*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 scalar_t__ sigd ;
 int sigd_enq (struct atm_vcc*,int ,struct atm_vcc*,int *,int *) ;
 int sigd_enq2 (int *,int ,struct atm_vcc*,int *,int *,int *,int) ;
 scalar_t__ signal_pending (int ) ;
 TYPE_3__* sk_atm (struct atm_vcc*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int sock_net (struct sock*) ;
 int svc_create (int ,struct socket*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int vcc_connect (struct socket*,int ,int ,int ) ;
 int wait ;

__attribute__((used)) static int svc_accept(struct socket *sock,struct socket *newsock,int flags)
{
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 struct atmsvc_msg *msg;
 struct atm_vcc *old_vcc = ATM_SD(sock);
 struct atm_vcc *new_vcc;
 int error;

 lock_sock(sk);

 error = svc_create(sock_net(sk), newsock, 0, 0);
 if (error)
  goto out;

 new_vcc = ATM_SD(newsock);

 pr_debug("svc_accept %p -> %p\n",old_vcc,new_vcc);
 while (1) {
  DEFINE_WAIT(wait);

  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
  while (!(skb = skb_dequeue(&sk->sk_receive_queue)) &&
         sigd) {
   if (test_bit(ATM_VF_RELEASED,&old_vcc->flags)) break;
   if (test_bit(ATM_VF_CLOSE,&old_vcc->flags)) {
    error = -sk->sk_err;
    break;
   }
   if (flags & O_NONBLOCK) {
    error = -EAGAIN;
    break;
   }
   release_sock(sk);
   schedule();
   lock_sock(sk);
   if (signal_pending(current)) {
    error = -ERESTARTSYS;
    break;
   }
   prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
  }
  finish_wait(sk->sk_sleep, &wait);
  if (error)
   goto out;
  if (!skb) {
   error = -EUNATCH;
   goto out;
  }
  msg = (struct atmsvc_msg *) skb->data;
  new_vcc->qos = msg->qos;
  set_bit(ATM_VF_HASQOS,&new_vcc->flags);
  new_vcc->remote = msg->svc;
  new_vcc->local = msg->local;
  new_vcc->sap = msg->sap;
  error = vcc_connect(newsock, msg->pvc.sap_addr.itf,
        msg->pvc.sap_addr.vpi, msg->pvc.sap_addr.vci);
  dev_kfree_skb(skb);
  sk->sk_ack_backlog--;
  if (error) {
   sigd_enq2(((void*)0),as_reject,old_vcc,((void*)0),((void*)0),
       &old_vcc->qos,error);
   error = error == -EAGAIN ? -EBUSY : error;
   goto out;
  }

  set_bit(ATM_VF_WAITING, &new_vcc->flags);
  prepare_to_wait(sk_atm(new_vcc)->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
  sigd_enq(new_vcc,as_accept,old_vcc,((void*)0),((void*)0));
  while (test_bit(ATM_VF_WAITING, &new_vcc->flags) && sigd) {
   release_sock(sk);
   schedule();
   lock_sock(sk);
   prepare_to_wait(sk_atm(new_vcc)->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
  }
  finish_wait(sk_atm(new_vcc)->sk_sleep, &wait);
  if (!sigd) {
   error = -EUNATCH;
   goto out;
  }
  if (!sk_atm(new_vcc)->sk_err)
   break;
  if (sk_atm(new_vcc)->sk_err != ERESTARTSYS) {
   error = -sk_atm(new_vcc)->sk_err;
   goto out;
  }
 }
 newsock->state = SS_CONNECTED;
out:
 release_sock(sk);
 return error;
}
