
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_receive_queue; int sk_sleep; } ;
struct sk_buff {int truesize; } ;
struct atm_vcc {int flags; int qos; } ;


 int ATM_VF_REGIS ;
 int ATM_VF_RELEASED ;
 int DEFINE_WAIT (int ) ;
 int TASK_UNINTERRUPTIBLE ;
 int as_close ;
 int as_reject ;
 int atm_return (struct atm_vcc*,int ) ;
 int clear_bit (int ,int *) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int finish_wait (int ,int *) ;
 int pr_debug (char*,...) ;
 int prepare_to_wait (int ,int *,int ) ;
 int schedule () ;
 scalar_t__ sigd ;
 int sigd_enq (struct atm_vcc*,int ,int *,int *,int *) ;
 int sigd_enq2 (int *,int ,struct atm_vcc*,int *,int *,int *,int ) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 struct sk_buff* skb_dequeue (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait ;

__attribute__((used)) static void svc_disconnect(struct atm_vcc *vcc)
{
 DEFINE_WAIT(wait);
 struct sk_buff *skb;
 struct sock *sk = sk_atm(vcc);

 pr_debug("svc_disconnect %p\n",vcc);
 if (test_bit(ATM_VF_REGIS,&vcc->flags)) {
  prepare_to_wait(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
  sigd_enq(vcc,as_close,((void*)0),((void*)0),((void*)0));
  while (!test_bit(ATM_VF_RELEASED,&vcc->flags) && sigd) {
   schedule();
   prepare_to_wait(sk->sk_sleep, &wait, TASK_UNINTERRUPTIBLE);
  }
  finish_wait(sk->sk_sleep, &wait);
 }


 while ((skb = skb_dequeue(&sk->sk_receive_queue)) != ((void*)0)) {
  atm_return(vcc, skb->truesize);
  pr_debug("LISTEN REL\n");
  sigd_enq2(((void*)0),as_reject,vcc,((void*)0),((void*)0),&vcc->qos,0);
  dev_kfree_skb(skb);
 }
 clear_bit(ATM_VF_REGIS, &vcc->flags);

}
