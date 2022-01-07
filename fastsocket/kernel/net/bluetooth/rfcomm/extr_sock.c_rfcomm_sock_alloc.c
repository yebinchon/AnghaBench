
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sock {int sk_sndbuf; int sk_rcvbuf; int sk_protocol; int sk_state; int sk_sndtimeo; int sk_destruct; } ;
struct rfcomm_dlc {struct sock* owner; int state_change; int data_ready; } ;
struct net {int dummy; } ;
typedef int gfp_t ;
struct TYPE_4__ {int accept_q; } ;
struct TYPE_3__ {struct rfcomm_dlc* dlc; } ;


 int BT_DBG (char*,struct sock*) ;
 int BT_OPEN ;
 int INIT_LIST_HEAD (int *) ;
 int PF_BLUETOOTH ;
 int RFCOMM_CONN_TIMEOUT ;
 int RFCOMM_DEFAULT_MTU ;
 int RFCOMM_MAX_CREDITS ;
 int SOCK_ZAPPED ;
 TYPE_2__* bt_sk (struct sock*) ;
 int bt_sock_link (int *,struct sock*) ;
 struct rfcomm_dlc* rfcomm_dlc_alloc (int ) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;
 int rfcomm_proto ;
 int rfcomm_sk_data_ready ;
 int rfcomm_sk_list ;
 int rfcomm_sk_state_change ;
 int rfcomm_sock_destruct ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sk_free (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;
 int sock_reset_flag (struct sock*,int ) ;

__attribute__((used)) static struct sock *rfcomm_sock_alloc(struct net *net, struct socket *sock, int proto, gfp_t prio)
{
 struct rfcomm_dlc *d;
 struct sock *sk;

 sk = sk_alloc(net, PF_BLUETOOTH, prio, &rfcomm_proto);
 if (!sk)
  return ((void*)0);

 sock_init_data(sock, sk);
 INIT_LIST_HEAD(&bt_sk(sk)->accept_q);

 d = rfcomm_dlc_alloc(prio);
 if (!d) {
  sk_free(sk);
  return ((void*)0);
 }

 d->data_ready = rfcomm_sk_data_ready;
 d->state_change = rfcomm_sk_state_change;

 rfcomm_pi(sk)->dlc = d;
 d->owner = sk;

 sk->sk_destruct = rfcomm_sock_destruct;
 sk->sk_sndtimeo = RFCOMM_CONN_TIMEOUT;

 sk->sk_sndbuf = RFCOMM_MAX_CREDITS * RFCOMM_DEFAULT_MTU * 10;
 sk->sk_rcvbuf = RFCOMM_MAX_CREDITS * RFCOMM_DEFAULT_MTU * 10;

 sock_reset_flag(sk, SOCK_ZAPPED);

 sk->sk_protocol = proto;
 sk->sk_state = BT_OPEN;

 bt_sock_link(&rfcomm_sk_list, sk);

 BT_DBG("sk %p", sk);
 return sk;
}
