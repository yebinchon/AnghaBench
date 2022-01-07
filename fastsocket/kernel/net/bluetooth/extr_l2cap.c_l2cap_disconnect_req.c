
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int sk_shutdown; } ;
struct l2cap_disconn_rsp {void* scid; void* dcid; } ;
struct l2cap_disconn_req {int dcid; int scid; } ;
struct l2cap_conn {int chan_list; } ;
struct l2cap_cmd_hdr {int ident; } ;
typedef int rsp ;
struct TYPE_2__ {int monitor_timer; int retrans_timer; int dcid; int scid; } ;


 int BT_DBG (char*,int ,int ) ;
 int ECONNRESET ;
 int L2CAP_DISCONN_RSP ;
 int SHUTDOWN_MASK ;
 int SREJ_QUEUE (struct sock*) ;
 int TX_QUEUE (struct sock*) ;
 int __le16_to_cpu (int ) ;
 int bh_unlock_sock (struct sock*) ;
 void* cpu_to_le16 (int ) ;
 int del_timer (int *) ;
 int l2cap_chan_del (struct sock*,int ) ;
 struct sock* l2cap_get_chan_by_scid (int *,int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_disconn_rsp*) ;
 int l2cap_sock_kill (struct sock*) ;
 int skb_queue_purge (int ) ;

__attribute__((used)) static inline int l2cap_disconnect_req(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
 struct l2cap_disconn_req *req = (struct l2cap_disconn_req *) data;
 struct l2cap_disconn_rsp rsp;
 u16 dcid, scid;
 struct sock *sk;

 scid = __le16_to_cpu(req->scid);
 dcid = __le16_to_cpu(req->dcid);

 BT_DBG("scid 0x%4.4x dcid 0x%4.4x", scid, dcid);

 sk = l2cap_get_chan_by_scid(&conn->chan_list, dcid);
 if (!sk)
  return 0;

 rsp.dcid = cpu_to_le16(l2cap_pi(sk)->scid);
 rsp.scid = cpu_to_le16(l2cap_pi(sk)->dcid);
 l2cap_send_cmd(conn, cmd->ident, L2CAP_DISCONN_RSP, sizeof(rsp), &rsp);

 sk->sk_shutdown = SHUTDOWN_MASK;

 skb_queue_purge(TX_QUEUE(sk));
 skb_queue_purge(SREJ_QUEUE(sk));
 del_timer(&l2cap_pi(sk)->retrans_timer);
 del_timer(&l2cap_pi(sk)->monitor_timer);

 l2cap_chan_del(sk, ECONNRESET);
 bh_unlock_sock(sk);

 l2cap_sock_kill(sk);
 return 0;
}
