
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef struct sk_buff {unsigned long data; unsigned long transport_header; unsigned long network_header; unsigned long mac_header; } const sk_buff ;
struct TYPE_2__ {int gso_type; int gso_segs; int gso_size; } ;


 int __copy_skb_header (struct sk_buff const*,struct sk_buff const*) ;
 scalar_t__ skb_mac_header_was_set (struct sk_buff const*) ;
 TYPE_1__* skb_shinfo (struct sk_buff const*) ;

__attribute__((used)) static void copy_skb_header(struct sk_buff *new, const struct sk_buff *old)
{




 unsigned long offset = new->data - old->data;


 __copy_skb_header(new, old);



 new->transport_header += offset;
 new->network_header += offset;
 if (skb_mac_header_was_set(new))
  new->mac_header += offset;

 skb_shinfo(new)->gso_size = skb_shinfo(old)->gso_size;
 skb_shinfo(new)->gso_segs = skb_shinfo(old)->gso_segs;
 skb_shinfo(new)->gso_type = skb_shinfo(old)->gso_type;
}
