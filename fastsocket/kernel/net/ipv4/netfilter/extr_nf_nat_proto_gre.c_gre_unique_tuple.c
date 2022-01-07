
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef unsigned int u_int16_t ;
struct TYPE_20__ {int key; } ;
struct TYPE_11__ {TYPE_9__ gre; } ;
struct TYPE_18__ {int key; } ;
struct TYPE_19__ {TYPE_7__ gre; } ;
struct nf_nat_range {int flags; TYPE_10__ max; TYPE_8__ min; } ;
struct TYPE_15__ {int key; } ;
struct TYPE_16__ {TYPE_4__ gre; } ;
struct TYPE_17__ {TYPE_5__ u; } ;
struct TYPE_12__ {int key; } ;
struct TYPE_13__ {TYPE_1__ gre; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_6__ dst; TYPE_3__ src; } ;
struct nf_conn {int master; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __be16 ;


 int IP_NAT_MANIP_SRC ;
 int IP_NAT_RANGE_PROTO_SPECIFIED ;
 int htons (unsigned int) ;
 int nf_nat_used_tuple (struct nf_conntrack_tuple*,struct nf_conn const*) ;
 unsigned int ntohs (int ) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static bool
gre_unique_tuple(struct nf_conntrack_tuple *tuple,
   const struct nf_nat_range *range,
   enum nf_nat_manip_type maniptype,
   const struct nf_conn *ct)
{
 static u_int16_t key;
 __be16 *keyptr;
 unsigned int min, i, range_size;



 if (!ct->master)
  return 0;

 if (maniptype == IP_NAT_MANIP_SRC)
  keyptr = &tuple->src.u.gre.key;
 else
  keyptr = &tuple->dst.u.gre.key;

 if (!(range->flags & IP_NAT_RANGE_PROTO_SPECIFIED)) {
  pr_debug("%p: NATing GRE PPTP\n", ct);
  min = 1;
  range_size = 0xffff;
 } else {
  min = ntohs(range->min.gre.key);
  range_size = ntohs(range->max.gre.key) - min + 1;
 }

 pr_debug("min = %u, range_size = %u\n", min, range_size);

 for (i = 0; i < range_size; i++, key++) {
  *keyptr = htons(min + key % range_size);
  if (!nf_nat_used_tuple(tuple, ct))
   return 1;
 }

 pr_debug("%p: no NAT mapping\n", ct);
 return 0;
}
