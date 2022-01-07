
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_nat_range {int flags; int max; int min; } ;
struct nf_nat_protocol {int (* unique_tuple ) (struct nf_conntrack_tuple const*,struct nf_nat_range const*,int,struct nf_conn*) ;scalar_t__ (* in_range ) (struct nf_conntrack_tuple const*,int,int *,int *) ;} ;
struct TYPE_2__ {int protonum; } ;
typedef struct nf_conntrack_tuple {TYPE_1__ dst; } const nf_conntrack_tuple ;
struct nf_conn {int dummy; } ;
struct net {int dummy; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 int IP_NAT_MANIP_SRC ;
 int IP_NAT_RANGE_PROTO_RANDOM ;
 int IP_NAT_RANGE_PROTO_SPECIFIED ;
 struct nf_nat_protocol* __nf_nat_proto_find (int ) ;
 scalar_t__ find_appropriate_src (struct net*,struct nf_conntrack_tuple const*,struct nf_conntrack_tuple const*,struct nf_nat_range const*) ;
 int find_best_ips_proto (struct nf_conntrack_tuple const*,struct nf_nat_range const*,struct nf_conn*,int) ;
 scalar_t__ in_range (struct nf_conntrack_tuple const*,struct nf_nat_range const*) ;
 struct net* nf_ct_net (struct nf_conn*) ;
 int nf_nat_used_tuple (struct nf_conntrack_tuple const*,struct nf_conn*) ;
 int pr_debug (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct nf_conntrack_tuple const*,struct nf_nat_range const*,int,struct nf_conn*) ;
 scalar_t__ stub2 (struct nf_conntrack_tuple const*,int,int *,int *) ;
 int stub3 (struct nf_conntrack_tuple const*,struct nf_nat_range const*,int,struct nf_conn*) ;

__attribute__((used)) static void
get_unique_tuple(struct nf_conntrack_tuple *tuple,
   const struct nf_conntrack_tuple *orig_tuple,
   const struct nf_nat_range *range,
   struct nf_conn *ct,
   enum nf_nat_manip_type maniptype)
{
 struct net *net = nf_ct_net(ct);
 const struct nf_nat_protocol *proto;
 if (maniptype == IP_NAT_MANIP_SRC &&
     !(range->flags & IP_NAT_RANGE_PROTO_RANDOM)) {

  if (in_range(orig_tuple, range)) {
   if (!nf_nat_used_tuple(orig_tuple, ct)) {
    *tuple = *orig_tuple;
    return;
   }
  } else if (find_appropriate_src(net, orig_tuple, tuple,
      range)) {
   pr_debug("get_unique_tuple: Found current src map\n");
   if (!nf_nat_used_tuple(tuple, ct))
    return;
  }
 }



 *tuple = *orig_tuple;
 find_best_ips_proto(tuple, range, ct, maniptype);




 rcu_read_lock();
 proto = __nf_nat_proto_find(orig_tuple->dst.protonum);


 if (range->flags & IP_NAT_RANGE_PROTO_RANDOM) {
  proto->unique_tuple(tuple, range, maniptype, ct);
  goto out;
 }


 if ((!(range->flags & IP_NAT_RANGE_PROTO_SPECIFIED) ||
      proto->in_range(tuple, maniptype, &range->min, &range->max)) &&
     !nf_nat_used_tuple(tuple, ct))
  goto out;


 proto->unique_tuple(tuple, range, maniptype, ct);
out:
 rcu_read_unlock();
}
