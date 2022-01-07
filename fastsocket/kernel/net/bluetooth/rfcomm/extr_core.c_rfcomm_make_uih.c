
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int len; } ;
struct rfcomm_hdr {int ctrl; int addr; scalar_t__ len; } ;
typedef int __le16 ;


 int RFCOMM_UIH ;
 int __ctrl (int ,int ) ;
 int __fcs (void*) ;
 int __len16 (int) ;
 scalar_t__ __len8 (int) ;
 int cpu_to_le16 (int ) ;
 int put_unaligned (int ,int *) ;
 scalar_t__ skb_push (struct sk_buff*,int) ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void rfcomm_make_uih(struct sk_buff *skb, u8 addr)
{
 struct rfcomm_hdr *hdr;
 int len = skb->len;
 u8 *crc;

 if (len > 127) {
  hdr = (void *) skb_push(skb, 4);
  put_unaligned(cpu_to_le16(__len16(len)), (__le16 *) &hdr->len);
 } else {
  hdr = (void *) skb_push(skb, 3);
  hdr->len = __len8(len);
 }
 hdr->addr = addr;
 hdr->ctrl = __ctrl(RFCOMM_UIH, 0);

 crc = skb_put(skb, 1);
 *crc = __fcs((void *) hdr);
}
