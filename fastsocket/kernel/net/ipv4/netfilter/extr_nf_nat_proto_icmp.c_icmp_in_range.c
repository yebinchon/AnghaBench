
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int id; } ;
union nf_conntrack_man_proto {TYPE_4__ icmp; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ icmp; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_3__ src; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 scalar_t__ ntohs (int ) ;

__attribute__((used)) static bool
icmp_in_range(const struct nf_conntrack_tuple *tuple,
       enum nf_nat_manip_type maniptype,
       const union nf_conntrack_man_proto *min,
       const union nf_conntrack_man_proto *max)
{
 return ntohs(tuple->src.u.icmp.id) >= ntohs(min->icmp.id) &&
        ntohs(tuple->src.u.icmp.id) <= ntohs(max->icmp.id);
}
