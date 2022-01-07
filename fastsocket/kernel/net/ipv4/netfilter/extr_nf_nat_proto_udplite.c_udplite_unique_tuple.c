
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_nat_range {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 int nf_nat_proto_unique_tuple (struct nf_conntrack_tuple*,struct nf_nat_range const*,int,struct nf_conn const*,int *) ;
 int udplite_port_rover ;

__attribute__((used)) static bool
udplite_unique_tuple(struct nf_conntrack_tuple *tuple,
       const struct nf_nat_range *range,
       enum nf_nat_manip_type maniptype,
       const struct nf_conn *ct)
{
 return nf_nat_proto_unique_tuple(tuple, range, maniptype, ct,
      &udplite_port_rover);
}
