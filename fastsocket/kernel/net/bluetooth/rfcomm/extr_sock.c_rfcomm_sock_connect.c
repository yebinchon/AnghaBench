
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr_rc {int rc_channel; int rc_bdaddr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct sock {scalar_t__ sk_state; scalar_t__ sk_type; } ;
struct rfcomm_dlc {int role_switch; int sec_level; } ;
struct TYPE_4__ {int src; int dst; } ;
struct TYPE_3__ {int role_switch; int sec_level; int channel; struct rfcomm_dlc* dlc; } ;


 scalar_t__ AF_BLUETOOTH ;
 scalar_t__ BT_BOUND ;
 scalar_t__ BT_CONNECT ;
 int BT_CONNECTED ;
 int BT_DBG (char*,struct sock*) ;
 scalar_t__ BT_OPEN ;
 int EBADFD ;
 int EINVAL ;
 int O_NONBLOCK ;
 scalar_t__ SOCK_STREAM ;
 int bacpy (int *,int *) ;
 TYPE_2__* bt_sk (struct sock*) ;
 int bt_sock_wait_state (struct sock*,int ,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int rfcomm_dlc_open (struct rfcomm_dlc*,int *,int *,int ) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;
 int sock_sndtimeo (struct sock*,int) ;

__attribute__((used)) static int rfcomm_sock_connect(struct socket *sock, struct sockaddr *addr, int alen, int flags)
{
 struct sockaddr_rc *sa = (struct sockaddr_rc *) addr;
 struct sock *sk = sock->sk;
 struct rfcomm_dlc *d = rfcomm_pi(sk)->dlc;
 int err = 0;

 BT_DBG("sk %p", sk);

 if (addr->sa_family != AF_BLUETOOTH || alen < sizeof(struct sockaddr_rc))
  return -EINVAL;

 lock_sock(sk);

 if (sk->sk_state != BT_OPEN && sk->sk_state != BT_BOUND) {
  err = -EBADFD;
  goto done;
 }

 if (sk->sk_type != SOCK_STREAM) {
  err = -EINVAL;
  goto done;
 }

 sk->sk_state = BT_CONNECT;
 bacpy(&bt_sk(sk)->dst, &sa->rc_bdaddr);
 rfcomm_pi(sk)->channel = sa->rc_channel;

 d->sec_level = rfcomm_pi(sk)->sec_level;
 d->role_switch = rfcomm_pi(sk)->role_switch;

 err = rfcomm_dlc_open(d, &bt_sk(sk)->src, &sa->rc_bdaddr, sa->rc_channel);
 if (!err)
  err = bt_sock_wait_state(sk, BT_CONNECTED,
    sock_sndtimeo(sk, flags & O_NONBLOCK));

done:
 release_sock(sk);
 return err;
}
