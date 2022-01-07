
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int sk_type; int sk_sndtimeo; int sk_socket; } ;
struct l2cap_conn_rsp {void* status; void* result; void* dcid; void* scid; } ;
struct l2cap_conn {int dummy; } ;
typedef int rsp ;
typedef int __u16 ;
struct TYPE_4__ {int defer_setup; } ;
struct TYPE_3__ {int ident; int scid; int dcid; struct l2cap_conn* conn; } ;






 int BT_DBG (char*,struct sock*,int,int ) ;


 int L2CAP_CONN_RSP ;
 int L2CAP_CR_BAD_PSM ;
 int L2CAP_CR_SEC_BLOCK ;
 int L2CAP_CS_NO_INFO ;
 int SOCK_SEQPACKET ;
 int SOCK_ZAPPED ;
 TYPE_2__* bt_sk (struct sock*) ;
 void* cpu_to_le16 (int ) ;
 int l2cap_chan_del (struct sock*,int) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_conn_rsp*) ;
 int l2cap_send_disconn_req (struct l2cap_conn*,struct sock*) ;
 int l2cap_sock_cleanup_listen (struct sock*) ;
 int l2cap_sock_set_timer (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;

__attribute__((used)) static void __l2cap_sock_close(struct sock *sk, int reason)
{
 BT_DBG("sk %p state %d socket %p", sk, sk->sk_state, sk->sk_socket);

 switch (sk->sk_state) {
 case 128:
  l2cap_sock_cleanup_listen(sk);
  break;

 case 130:
 case 133:
  if (sk->sk_type == SOCK_SEQPACKET) {
   struct l2cap_conn *conn = l2cap_pi(sk)->conn;

   sk->sk_state = 129;
   l2cap_sock_set_timer(sk, sk->sk_sndtimeo);
   l2cap_send_disconn_req(conn, sk);
  } else
   l2cap_chan_del(sk, reason);
  break;

 case 131:
  if (sk->sk_type == SOCK_SEQPACKET) {
   struct l2cap_conn *conn = l2cap_pi(sk)->conn;
   struct l2cap_conn_rsp rsp;
   __u16 result;

   if (bt_sk(sk)->defer_setup)
    result = L2CAP_CR_SEC_BLOCK;
   else
    result = L2CAP_CR_BAD_PSM;

   rsp.scid = cpu_to_le16(l2cap_pi(sk)->dcid);
   rsp.dcid = cpu_to_le16(l2cap_pi(sk)->scid);
   rsp.result = cpu_to_le16(result);
   rsp.status = cpu_to_le16(L2CAP_CS_NO_INFO);
   l2cap_send_cmd(conn, l2cap_pi(sk)->ident,
     L2CAP_CONN_RSP, sizeof(rsp), &rsp);
  } else
   l2cap_chan_del(sk, reason);
  break;

 case 132:
 case 129:
  l2cap_chan_del(sk, reason);
  break;

 default:
  sock_set_flag(sk, SOCK_ZAPPED);
  break;
 }
}
