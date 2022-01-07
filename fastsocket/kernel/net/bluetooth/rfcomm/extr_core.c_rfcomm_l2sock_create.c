
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_state_change; int sk_data_ready; } ;


 int BTPROTO_L2CAP ;
 int BT_DBG (char*) ;
 int PF_BLUETOOTH ;
 int SOCK_SEQPACKET ;
 int rfcomm_l2data_ready ;
 int rfcomm_l2state_change ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;

__attribute__((used)) static int rfcomm_l2sock_create(struct socket **sock)
{
 int err;

 BT_DBG("");

 err = sock_create_kern(PF_BLUETOOTH, SOCK_SEQPACKET, BTPROTO_L2CAP, sock);
 if (!err) {
  struct sock *sk = (*sock)->sk;
  sk->sk_data_ready = rfcomm_l2data_ready;
  sk->sk_state_change = rfcomm_l2state_change;
 }
 return err;
}
