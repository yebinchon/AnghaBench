
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; scalar_t__ network_header; scalar_t__ tail; } ;
struct TYPE_3__ {int tot_len; } ;


 int BUG_ON (int ) ;
 int __skb_trim (struct sk_buff*,scalar_t__) ;
 int htons (scalar_t__) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 int ip_send_check (TYPE_1__*) ;
 int memcpy (unsigned char*,char const*,unsigned int) ;
 int memmove (unsigned char*,unsigned char*,scalar_t__) ;
 int pr_debug (char*,unsigned int,scalar_t__) ;
 int skb_is_nonlinear (struct sk_buff*) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,unsigned int) ;

__attribute__((used)) static void mangle_contents(struct sk_buff *skb,
       unsigned int dataoff,
       unsigned int match_offset,
       unsigned int match_len,
       const char *rep_buffer,
       unsigned int rep_len)
{
 unsigned char *data;

 BUG_ON(skb_is_nonlinear(skb));
 data = skb_network_header(skb) + dataoff;


 memmove(data + match_offset + rep_len,
  data + match_offset + match_len,
  skb->tail - (skb->network_header + dataoff +
        match_offset + match_len));


 memcpy(data + match_offset, rep_buffer, rep_len);


 if (rep_len > match_len) {
  pr_debug("nf_nat_mangle_packet: Extending packet by "
    "%u from %u bytes\n", rep_len - match_len, skb->len);
  skb_put(skb, rep_len - match_len);
 } else {
  pr_debug("nf_nat_mangle_packet: Shrinking packet from "
    "%u from %u bytes\n", match_len - rep_len, skb->len);
  __skb_trim(skb, skb->len + rep_len - match_len);
 }


 ip_hdr(skb)->tot_len = htons(skb->len);
 ip_send_check(ip_hdr(skb));
}
