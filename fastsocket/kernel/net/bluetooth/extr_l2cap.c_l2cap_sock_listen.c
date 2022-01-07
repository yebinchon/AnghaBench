
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;
typedef int bdaddr_t ;
struct TYPE_6__ {int src; } ;
struct TYPE_5__ {int mode; void* sport; void* psm; } ;
struct TYPE_4__ {int lock; } ;


 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int) ;
 scalar_t__ BT_LISTEN ;
 int EBADFD ;
 int EINVAL ;
 int ENOTSUPP ;



 scalar_t__ SOCK_SEQPACKET ;
 int __l2cap_get_sock_by_addr (void*,int *) ;
 TYPE_3__* bt_sk (struct sock*) ;
 void* cpu_to_le16 (int) ;
 int enable_ertm ;
 TYPE_2__* l2cap_pi (struct sock*) ;
 TYPE_1__ l2cap_sk_list ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int l2cap_sock_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int err = 0;

 BT_DBG("sk %p backlog %d", sk, backlog);

 lock_sock(sk);

 if (sk->sk_state != BT_BOUND || sock->type != SOCK_SEQPACKET) {
  err = -EBADFD;
  goto done;
 }

 switch (l2cap_pi(sk)->mode) {
 case 130:
  break;
 case 129:
 case 128:
  if (enable_ertm)
   break;

 default:
  err = -ENOTSUPP;
  goto done;
 }

 if (!l2cap_pi(sk)->psm) {
  bdaddr_t *src = &bt_sk(sk)->src;
  u16 psm;

  err = -EINVAL;

  write_lock_bh(&l2cap_sk_list.lock);

  for (psm = 0x1001; psm < 0x1100; psm += 2)
   if (!__l2cap_get_sock_by_addr(cpu_to_le16(psm), src)) {
    l2cap_pi(sk)->psm = cpu_to_le16(psm);
    l2cap_pi(sk)->sport = cpu_to_le16(psm);
    err = 0;
    break;
   }

  write_unlock_bh(&l2cap_sk_list.lock);

  if (err < 0)
   goto done;
 }

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;
 sk->sk_state = BT_LISTEN;

done:
 release_sock(sk);
 return err;
}
