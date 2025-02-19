
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct l2cap_hdr {int len; } ;
struct l2cap_conn {int rx_len; struct sk_buff* rx_skb; } ;
struct hci_conn {struct l2cap_conn* l2cap_data; } ;


 int ACL_START ;
 int BT_DBG (char*,...) ;
 int BT_ERR (char*,int,...) ;
 int ECOMM ;
 int GFP_ATOMIC ;
 int L2CAP_HDR_SIZE ;
 int __le16_to_cpu (int ) ;
 struct sk_buff* bt_skb_alloc (int,int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct l2cap_conn* l2cap_conn_add (struct hci_conn*,int ) ;
 int l2cap_conn_unreliable (struct l2cap_conn*,int ) ;
 int l2cap_recv_frame (struct l2cap_conn*,struct sk_buff*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static int l2cap_recv_acldata(struct hci_conn *hcon, struct sk_buff *skb, u16 flags)
{
 struct l2cap_conn *conn = hcon->l2cap_data;

 if (!conn && !(conn = l2cap_conn_add(hcon, 0)))
  goto drop;

 BT_DBG("conn %p len %d flags 0x%x", conn, skb->len, flags);

 if (flags & ACL_START) {
  struct l2cap_hdr *hdr;
  int len;

  if (conn->rx_len) {
   BT_ERR("Unexpected start frame (len %d)", skb->len);
   kfree_skb(conn->rx_skb);
   conn->rx_skb = ((void*)0);
   conn->rx_len = 0;
   l2cap_conn_unreliable(conn, ECOMM);
  }

  if (skb->len < 2) {
   BT_ERR("Frame is too short (len %d)", skb->len);
   l2cap_conn_unreliable(conn, ECOMM);
   goto drop;
  }

  hdr = (struct l2cap_hdr *) skb->data;
  len = __le16_to_cpu(hdr->len) + L2CAP_HDR_SIZE;

  if (len == skb->len) {

   l2cap_recv_frame(conn, skb);
   return 0;
  }

  BT_DBG("Start: total len %d, frag len %d", len, skb->len);

  if (skb->len > len) {
   BT_ERR("Frame is too long (len %d, expected len %d)",
    skb->len, len);
   l2cap_conn_unreliable(conn, ECOMM);
   goto drop;
  }


  conn->rx_skb = bt_skb_alloc(len, GFP_ATOMIC);
  if (!conn->rx_skb)
   goto drop;

  skb_copy_from_linear_data(skb, skb_put(conn->rx_skb, skb->len),
        skb->len);
  conn->rx_len = len - skb->len;
 } else {
  BT_DBG("Cont: frag len %d (expecting %d)", skb->len, conn->rx_len);

  if (!conn->rx_len) {
   BT_ERR("Unexpected continuation frame (len %d)", skb->len);
   l2cap_conn_unreliable(conn, ECOMM);
   goto drop;
  }

  if (skb->len > conn->rx_len) {
   BT_ERR("Fragment is too long (len %d, expected %d)",
     skb->len, conn->rx_len);
   kfree_skb(conn->rx_skb);
   conn->rx_skb = ((void*)0);
   conn->rx_len = 0;
   l2cap_conn_unreliable(conn, ECOMM);
   goto drop;
  }

  skb_copy_from_linear_data(skb, skb_put(conn->rx_skb, skb->len),
        skb->len);
  conn->rx_len -= skb->len;

  if (!conn->rx_len) {

   l2cap_recv_frame(conn, conn->rx_skb);
   conn->rx_skb = ((void*)0);
  }
 }

drop:
 kfree_skb(skb);
 return 0;
}
