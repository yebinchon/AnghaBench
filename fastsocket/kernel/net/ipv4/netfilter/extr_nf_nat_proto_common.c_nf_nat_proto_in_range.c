
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union nf_conntrack_man_proto {int all; } ;
struct TYPE_7__ {int all; } ;
struct TYPE_8__ {TYPE_3__ u; } ;
struct TYPE_5__ {int all; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __be16 ;


 int IP_NAT_MANIP_SRC ;
 scalar_t__ ntohs (int ) ;

bool nf_nat_proto_in_range(const struct nf_conntrack_tuple *tuple,
      enum nf_nat_manip_type maniptype,
      const union nf_conntrack_man_proto *min,
      const union nf_conntrack_man_proto *max)
{
 __be16 port;

 if (maniptype == IP_NAT_MANIP_SRC)
  port = tuple->src.u.all;
 else
  port = tuple->dst.u.all;

 return ntohs(port) >= ntohs(min->all) &&
        ntohs(port) <= ntohs(max->all);
}
