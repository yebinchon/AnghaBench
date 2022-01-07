
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_state; int sk_ack_backlog; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {scalar_t__ defer_setup; int dst; int src; } ;
struct TYPE_3__ {struct rfcomm_dlc* dlc; int channel; } ;


 int BTPROTO_RFCOMM ;
 int BT_CONFIG ;
 int BT_DBG (char*,int ,...) ;
 int BT_LISTEN ;
 int GFP_ATOMIC ;
 int bacpy (int *,int *) ;
 int bh_unlock_sock (struct sock*) ;
 int bt_accept_enqueue (struct sock*,struct sock*) ;
 TYPE_2__* bt_sk (struct sock*) ;
 struct sock* rfcomm_get_sock_by_channel (int ,int ,int *) ;
 TYPE_1__* rfcomm_pi (struct sock*) ;
 int rfcomm_session_getaddr (struct rfcomm_session*,int *,int *) ;
 struct sock* rfcomm_sock_alloc (int ,int *,int ,int ) ;
 int rfcomm_sock_init (struct sock*,struct sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;

int rfcomm_connect_ind(struct rfcomm_session *s, u8 channel, struct rfcomm_dlc **d)
{
 struct sock *sk, *parent;
 bdaddr_t src, dst;
 int result = 0;

 BT_DBG("session %p channel %d", s, channel);

 rfcomm_session_getaddr(s, &src, &dst);


 parent = rfcomm_get_sock_by_channel(BT_LISTEN, channel, &src);
 if (!parent)
  return 0;


 if (sk_acceptq_is_full(parent)) {
  BT_DBG("backlog full %d", parent->sk_ack_backlog);
  goto done;
 }

 sk = rfcomm_sock_alloc(sock_net(parent), ((void*)0), BTPROTO_RFCOMM, GFP_ATOMIC);
 if (!sk)
  goto done;

 rfcomm_sock_init(sk, parent);
 bacpy(&bt_sk(sk)->src, &src);
 bacpy(&bt_sk(sk)->dst, &dst);
 rfcomm_pi(sk)->channel = channel;

 sk->sk_state = BT_CONFIG;
 bt_accept_enqueue(parent, sk);


 *d = rfcomm_pi(sk)->dlc;
 result = 1;

done:
 bh_unlock_sock(parent);

 if (bt_sk(parent)->defer_setup)
  parent->sk_state_change(parent);

 return result;
}
