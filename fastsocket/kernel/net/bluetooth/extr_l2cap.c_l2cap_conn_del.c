
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {struct sock* head; } ;
struct l2cap_conn {int info_state; int info_timer; TYPE_1__ chan_list; int rx_skb; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;


 int BT_DBG (char*,struct hci_conn*,struct l2cap_conn*,int) ;
 int L2CAP_INFO_FEAT_MASK_REQ_SENT ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int del_timer_sync (int *) ;
 int kfree (struct l2cap_conn*) ;
 int kfree_skb (int ) ;
 int l2cap_chan_del (struct sock*,int) ;
 int l2cap_sock_kill (struct sock*) ;

__attribute__((used)) static void l2cap_conn_del(struct hci_conn *hcon, int err)
{
 struct l2cap_conn *conn = hcon->l2cap_data;
 struct sock *sk;

 if (!conn)
  return;

 BT_DBG("hcon %p conn %p, err %d", hcon, conn, err);

 kfree_skb(conn->rx_skb);


 while ((sk = conn->chan_list.head)) {
  bh_lock_sock(sk);
  l2cap_chan_del(sk, err);
  bh_unlock_sock(sk);
  l2cap_sock_kill(sk);
 }

 if (conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT)
  del_timer_sync(&conn->info_timer);

 hcon->l2cap_data = ((void*)0);
 kfree(conn);
}
