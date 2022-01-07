
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sock {int dummy; } ;
struct l2cap_disconn_rsp {int dcid; int scid; } ;
struct l2cap_conn {int chan_list; } ;
struct l2cap_cmd_hdr {int dummy; } ;
struct TYPE_2__ {int monitor_timer; int retrans_timer; } ;


 int BT_DBG (char*,int ,int ) ;
 int SREJ_QUEUE (struct sock*) ;
 int TX_QUEUE (struct sock*) ;
 int __le16_to_cpu (int ) ;
 int bh_unlock_sock (struct sock*) ;
 int del_timer (int *) ;
 int l2cap_chan_del (struct sock*,int ) ;
 struct sock* l2cap_get_chan_by_scid (int *,int ) ;
 TYPE_1__* l2cap_pi (struct sock*) ;
 int l2cap_sock_kill (struct sock*) ;
 int skb_queue_purge (int ) ;

__attribute__((used)) static inline int l2cap_disconnect_rsp(struct l2cap_conn *conn, struct l2cap_cmd_hdr *cmd, u8 *data)
{
 struct l2cap_disconn_rsp *rsp = (struct l2cap_disconn_rsp *) data;
 u16 dcid, scid;
 struct sock *sk;

 scid = __le16_to_cpu(rsp->scid);
 dcid = __le16_to_cpu(rsp->dcid);

 BT_DBG("dcid 0x%4.4x scid 0x%4.4x", dcid, scid);

 sk = l2cap_get_chan_by_scid(&conn->chan_list, scid);
 if (!sk)
  return 0;

 skb_queue_purge(TX_QUEUE(sk));
 skb_queue_purge(SREJ_QUEUE(sk));
 del_timer(&l2cap_pi(sk)->retrans_timer);
 del_timer(&l2cap_pi(sk)->monitor_timer);

 l2cap_chan_del(sk, 0);
 bh_unlock_sock(sk);

 l2cap_sock_kill(sk);
 return 0;
}
