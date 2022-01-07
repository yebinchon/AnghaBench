
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_pinfo {scalar_t__ fcs; } ;


 int EINVAL ;
 scalar_t__ L2CAP_FCS_CRC16 ;
 int L2CAP_HDR_SIZE ;
 scalar_t__ crc16 (int ,scalar_t__,scalar_t__) ;
 scalar_t__ get_unaligned_le16 (scalar_t__) ;
 int skb_trim (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int l2cap_check_fcs(struct l2cap_pinfo *pi, struct sk_buff *skb)
{
 u16 our_fcs, rcv_fcs;
 int hdr_size = L2CAP_HDR_SIZE + 2;

 if (pi->fcs == L2CAP_FCS_CRC16) {
  skb_trim(skb, skb->len - 2);
  rcv_fcs = get_unaligned_le16(skb->data + skb->len);
  our_fcs = crc16(0, skb->data - hdr_size, skb->len + hdr_size);

  if (our_fcs != rcv_fcs)
   return -EINVAL;
 }
 return 0;
}
