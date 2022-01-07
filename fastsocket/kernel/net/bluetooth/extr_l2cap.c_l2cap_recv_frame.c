
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_hdr {int len; int cid; } ;
struct l2cap_conn {int dummy; } ;
typedef int __le16 ;


 int BT_DBG (char*,scalar_t__,scalar_t__) ;


 int L2CAP_HDR_SIZE ;
 scalar_t__ __le16_to_cpu (int ) ;
 int get_unaligned_le16 (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 int l2cap_conless_channel (struct l2cap_conn*,int ,struct sk_buff*) ;
 int l2cap_data_channel (struct l2cap_conn*,scalar_t__,struct sk_buff*) ;
 int l2cap_sig_channel (struct l2cap_conn*,struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void l2cap_recv_frame(struct l2cap_conn *conn, struct sk_buff *skb)
{
 struct l2cap_hdr *lh = (void *) skb->data;
 u16 cid, len;
 __le16 psm;

 skb_pull(skb, L2CAP_HDR_SIZE);
 cid = __le16_to_cpu(lh->cid);
 len = __le16_to_cpu(lh->len);

 if (len != skb->len) {
  kfree_skb(skb);
  return;
 }

 BT_DBG("len %d, cid 0x%4.4x", len, cid);

 switch (cid) {
 case 128:
  l2cap_sig_channel(conn, skb);
  break;

 case 129:
  psm = get_unaligned_le16(skb->data);
  skb_pull(skb, 2);
  l2cap_conless_channel(conn, psm, skb);
  break;

 default:
  l2cap_data_channel(conn, cid, skb);
  break;
 }
}
