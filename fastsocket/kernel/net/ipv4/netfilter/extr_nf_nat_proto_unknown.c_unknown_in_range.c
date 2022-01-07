
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_conntrack_man_proto {int dummy; } nf_conntrack_man_proto ;
struct nf_conntrack_tuple {int dummy; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;



__attribute__((used)) static bool unknown_in_range(const struct nf_conntrack_tuple *tuple,
        enum nf_nat_manip_type manip_type,
        const union nf_conntrack_man_proto *min,
        const union nf_conntrack_man_proto *max)
{
 return 1;
}
