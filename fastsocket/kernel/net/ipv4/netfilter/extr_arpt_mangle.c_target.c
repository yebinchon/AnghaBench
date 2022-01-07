
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_target_param {struct arpt_mangle* targinfo; } ;
struct sk_buff {int len; } ;
struct TYPE_4__ {int tgt_ip; } ;
struct TYPE_3__ {int src_ip; } ;
struct arpt_mangle {int flags; unsigned int target; TYPE_2__ u_t; int * tgt_devaddr; TYPE_1__ u_s; int * src_devaddr; } ;
struct arphdr {int ar_pln; int ar_hln; } ;


 int ARPT_DEV_ADDR_LEN_MAX ;
 int ARPT_MANGLE_ADDR_LEN_MAX ;
 int ARPT_MANGLE_SDEV ;
 int ARPT_MANGLE_SIP ;
 int ARPT_MANGLE_TDEV ;
 int ARPT_MANGLE_TIP ;
 unsigned int NF_DROP ;
 struct arphdr* arp_hdr (struct sk_buff*) ;
 int memcpy (unsigned char*,int *,int) ;
 int skb_make_writable (struct sk_buff*,int ) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static unsigned int
target(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct arpt_mangle *mangle = par->targinfo;
 const struct arphdr *arp;
 unsigned char *arpptr;
 int pln, hln;

 if (!skb_make_writable(skb, skb->len))
  return NF_DROP;

 arp = arp_hdr(skb);
 arpptr = skb_network_header(skb) + sizeof(*arp);
 pln = arp->ar_pln;
 hln = arp->ar_hln;

 if (mangle->flags & ARPT_MANGLE_SDEV) {
  if (ARPT_DEV_ADDR_LEN_MAX < hln ||
     (arpptr + hln > skb_tail_pointer(skb)))
   return NF_DROP;
  memcpy(arpptr, mangle->src_devaddr, hln);
 }
 arpptr += hln;
 if (mangle->flags & ARPT_MANGLE_SIP) {
  if (ARPT_MANGLE_ADDR_LEN_MAX < pln ||
     (arpptr + pln > skb_tail_pointer(skb)))
   return NF_DROP;
  memcpy(arpptr, &mangle->u_s.src_ip, pln);
 }
 arpptr += pln;
 if (mangle->flags & ARPT_MANGLE_TDEV) {
  if (ARPT_DEV_ADDR_LEN_MAX < hln ||
     (arpptr + hln > skb_tail_pointer(skb)))
   return NF_DROP;
  memcpy(arpptr, mangle->tgt_devaddr, hln);
 }
 arpptr += hln;
 if (mangle->flags & ARPT_MANGLE_TIP) {
  if (ARPT_MANGLE_ADDR_LEN_MAX < pln ||
     (arpptr + pln > skb_tail_pointer(skb)))
   return NF_DROP;
  memcpy(arpptr, &mangle->u_t.tgt_ip, pln);
 }
 return mangle->target;
}
