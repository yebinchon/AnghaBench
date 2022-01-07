
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int sk_state; int sk_err; } ;
struct l2cap_conn {int chan_list; } ;
struct l2cap_conf_rsp {int data; int result; int flags; int scid; } ;
struct l2cap_conf_req {int dummy; } ;
struct l2cap_cmd_hdr {int len; } ;
typedef int req ;
struct TYPE_2__ {int conf_state; scalar_t__ fcs; scalar_t__ num_to_ack; scalar_t__ buffer_seq; scalar_t__ expected_tx_seq; int num_conf_req; int num_conf_rsp; } ;


 int BT_CONNECTED ;
 int BT_DBG (char*,int,int,int) ;
 int BT_DISCONN ;
 int ECONNRESET ;
 int HZ ;
 int L2CAP_CONF_INPUT_DONE ;
 int L2CAP_CONF_MAX_CONF_RSP ;
 int L2CAP_CONF_NO_FCS_RECV ;
 int L2CAP_CONF_OUTPUT_DONE ;
 int L2CAP_CONF_REQ ;


 scalar_t__ L2CAP_FCS_CRC16 ;
 scalar_t__ L2CAP_FCS_NONE ;
 int SREJ_QUEUE (struct sock*) ;
 int TX_QUEUE (struct sock*) ;
 int __le16_to_cpu (int ) ;
 int __skb_queue_head_init (int ) ;
 int bh_unlock_sock (struct sock*) ;
 int l2cap_chan_ready (struct sock*) ;
 struct sock* l2cap_get_chan_by_scid (int *,int) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_parse_conf_rsp (struct sock*,int ,int,char*,int*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,char*) ;
 int l2cap_send_disconn_req (struct l2cap_conn*,struct sock*) ;
 int l2cap_sock_set_timer (struct sock*,int) ;

__attribute__((used)) static inline int l2cap_config_rsp(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
 struct l2cap_conf_rsp *rsp = (struct l2cap_conf_rsp *)data;
 u16 scid, flags, result;
 struct sock *sk;

 scid = __le16_to_cpu(rsp->scid);
 flags = __le16_to_cpu(rsp->flags);
 result = __le16_to_cpu(rsp->result);

 BT_DBG("scid 0x%4.4x flags 0x%2.2x result 0x%2.2x",
   scid, flags, result);

 sk = l2cap_get_chan_by_scid(&conn->chan_list, scid);
 if (!sk)
  return 0;

 switch (result) {
 case 129:
  break;

 case 128:
  if (l2cap_pi(sk)->num_conf_rsp <= L2CAP_CONF_MAX_CONF_RSP) {
   int len = cmd->len - sizeof(*rsp);
   char req[64];

   if (len > sizeof(req) - sizeof(struct l2cap_conf_req)) {
    l2cap_send_disconn_req(conn, sk);
    goto done;
   }


   result = 129;
   len = l2cap_parse_conf_rsp(sk, rsp->data,
       len, req, &result);
   if (len < 0) {
    l2cap_send_disconn_req(conn, sk);
    goto done;
   }

   l2cap_send_cmd(conn, l2cap_get_ident(conn),
      L2CAP_CONF_REQ, len, req);
   l2cap_pi(sk)->num_conf_req++;
   if (result != 129)
    goto done;
   break;
  }

 default:
  sk->sk_state = BT_DISCONN;
  sk->sk_err = ECONNRESET;
  l2cap_sock_set_timer(sk, HZ * 5);
  l2cap_send_disconn_req(conn, sk);
  goto done;
 }

 if (flags & 0x01)
  goto done;

 l2cap_pi(sk)->conf_state |= L2CAP_CONF_INPUT_DONE;

 if (l2cap_pi(sk)->conf_state & L2CAP_CONF_OUTPUT_DONE) {
  if (!(l2cap_pi(sk)->conf_state & L2CAP_CONF_NO_FCS_RECV)
    || l2cap_pi(sk)->fcs != L2CAP_FCS_NONE)
   l2cap_pi(sk)->fcs = L2CAP_FCS_CRC16;

  sk->sk_state = BT_CONNECTED;
  l2cap_pi(sk)->expected_tx_seq = 0;
  l2cap_pi(sk)->buffer_seq = 0;
  l2cap_pi(sk)->num_to_ack = 0;
  __skb_queue_head_init(TX_QUEUE(sk));
  __skb_queue_head_init(SREJ_QUEUE(sk));
  l2cap_chan_ready(sk);
 }

done:
 bh_unlock_sock(sk);
 return 0;
}
