
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_rc {scalar_t__ rc_channel; int rc_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; } ;
struct TYPE_6__ {int src; } ;
struct TYPE_5__ {scalar_t__ channel; } ;
struct TYPE_4__ {int lock; } ;


 scalar_t__ AF_BLUETOOTH ;
 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int ) ;
 scalar_t__ BT_OPEN ;
 int EADDRINUSE ;
 int EBADFD ;
 int EINVAL ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ __rfcomm_get_sock_by_addr (scalar_t__,int *) ;
 int bacpy (int *,int *) ;
 int batostr (int *) ;
 TYPE_3__* bt_sk (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 TYPE_2__* rfcomm_pi (struct sock*) ;
 TYPE_1__ rfcomm_sk_list ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int rfcomm_sock_bind(struct socket *sock, struct sockaddr *addr, int addr_len)
{
 struct sockaddr_rc *sa = (struct sockaddr_rc *) addr;
 struct sock *sk = sock->sk;
 int err = 0;

 BT_DBG("sk %p %s", sk, batostr(&sa->rc_bdaddr));

 if (!addr || addr->sa_family != AF_BLUETOOTH)
  return -EINVAL;

 lock_sock(sk);

 if (sk->sk_state != BT_OPEN) {
  err = -EBADFD;
  goto done;
 }

 if (sk->sk_type != SOCK_STREAM) {
  err = -EINVAL;
  goto done;
 }

 write_lock_bh(&rfcomm_sk_list.lock);

 if (sa->rc_channel && __rfcomm_get_sock_by_addr(sa->rc_channel, &sa->rc_bdaddr)) {
  err = -EADDRINUSE;
 } else {

  bacpy(&bt_sk(sk)->src, &sa->rc_bdaddr);
  rfcomm_pi(sk)->channel = sa->rc_channel;
  sk->sk_state = BT_BOUND;
 }

 write_unlock_bh(&rfcomm_sk_list.lock);

done:
 release_sock(sk);
 return err;
}
