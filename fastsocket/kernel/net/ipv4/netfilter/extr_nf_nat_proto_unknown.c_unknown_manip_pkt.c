
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;



__attribute__((used)) static bool
unknown_manip_pkt(struct sk_buff *skb,
    unsigned int iphdroff,
    const struct nf_conntrack_tuple *tuple,
    enum nf_nat_manip_type maniptype)
{
 return 1;
}
