
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int u_int16_t ;
struct TYPE_13__ {int id; } ;
struct TYPE_14__ {TYPE_6__ icmp; } ;
struct TYPE_8__ {int id; } ;
struct TYPE_9__ {TYPE_1__ icmp; } ;
struct nf_nat_range {int flags; TYPE_7__ min; TYPE_2__ max; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_11__ {TYPE_3__ icmp; } ;
struct TYPE_12__ {TYPE_4__ u; } ;
struct nf_conntrack_tuple {TYPE_5__ src; } ;
struct nf_conn {int dummy; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 int IP_NAT_RANGE_PROTO_SPECIFIED ;
 int htons (int) ;
 int nf_nat_used_tuple (struct nf_conntrack_tuple*,struct nf_conn const*) ;
 int ntohs (int ) ;

__attribute__((used)) static bool
icmp_unique_tuple(struct nf_conntrack_tuple *tuple,
    const struct nf_nat_range *range,
    enum nf_nat_manip_type maniptype,
    const struct nf_conn *ct)
{
 static u_int16_t id;
 unsigned int range_size;
 unsigned int i;

 range_size = ntohs(range->max.icmp.id) - ntohs(range->min.icmp.id) + 1;

 if (!(range->flags & IP_NAT_RANGE_PROTO_SPECIFIED))
  range_size = 0xFFFF;

 for (i = 0; i < range_size; i++, id++) {
  tuple->src.u.icmp.id = htons(ntohs(range->min.icmp.id) +
          (id % range_size));
  if (!nf_nat_used_tuple(tuple, ct))
   return 1;
 }
 return 0;
}
