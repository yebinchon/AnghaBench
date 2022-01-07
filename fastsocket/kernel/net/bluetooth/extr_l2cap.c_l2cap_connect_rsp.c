
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int sk_state; } ;
struct l2cap_conn_rsp {int status; int result; int dcid; int scid; } ;
struct l2cap_conn {int chan_list; } ;
struct l2cap_cmd_hdr {int ident; } ;
struct TYPE_2__ {int dcid; int conf_state; int num_conf_req; int ident; } ;


 int BT_CONFIG ;
 int BT_DBG (char*,int,int,int,int) ;
 int ECONNREFUSED ;
 int L2CAP_CONF_CONNECT_PEND ;
 int L2CAP_CONF_REQ ;
 int L2CAP_CONF_REQ_SENT ;


 int __le16_to_cpu (int ) ;
 int bh_unlock_sock (struct sock*) ;
 int l2cap_build_conf_req (struct sock*,int *) ;
 int l2cap_chan_del (struct sock*,int ) ;
 struct sock* l2cap_get_chan_by_ident (int *,int ) ;
 struct sock* l2cap_get_chan_by_scid (int *,int) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int ,int *) ;

__attribute__((used)) static inline int l2cap_connect_rsp(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
 struct l2cap_conn_rsp *rsp = (struct l2cap_conn_rsp *) data;
 u16 scid, dcid, result, status;
 struct sock *sk;
 u8 req[128];

 scid = __le16_to_cpu(rsp->scid);
 dcid = __le16_to_cpu(rsp->dcid);
 result = __le16_to_cpu(rsp->result);
 status = __le16_to_cpu(rsp->status);

 BT_DBG("dcid 0x%4.4x scid 0x%4.4x result 0x%2.2x status 0x%2.2x", dcid, scid, result, status);

 if (scid) {
  sk = l2cap_get_chan_by_scid(&conn->chan_list, scid);
  if (!sk)
   return 0;
 } else {
  sk = l2cap_get_chan_by_ident(&conn->chan_list, cmd->ident);
  if (!sk)
   return 0;
 }

 switch (result) {
 case 128:
  sk->sk_state = BT_CONFIG;
  l2cap_pi(sk)->ident = 0;
  l2cap_pi(sk)->dcid = dcid;
  l2cap_pi(sk)->conf_state |= L2CAP_CONF_REQ_SENT;

  l2cap_pi(sk)->conf_state &= ~L2CAP_CONF_CONNECT_PEND;

  l2cap_send_cmd(conn, l2cap_get_ident(conn), L2CAP_CONF_REQ,
     l2cap_build_conf_req(sk, req), req);
  l2cap_pi(sk)->num_conf_req++;
  break;

 case 129:
  l2cap_pi(sk)->conf_state |= L2CAP_CONF_CONNECT_PEND;
  break;

 default:
  l2cap_chan_del(sk, ECONNREFUSED);
  break;
 }

 bh_unlock_sock(sk);
 return 0;
}
