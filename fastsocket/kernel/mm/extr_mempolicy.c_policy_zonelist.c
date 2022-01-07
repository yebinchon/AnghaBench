
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zonelist {int dummy; } ;
struct TYPE_2__ {int preferred_node; int nodes; } ;
struct mempolicy {int mode; int flags; TYPE_1__ v; } ;
typedef int gfp_t ;


 int BUG () ;

 int MPOL_F_LOCAL ;


 int __GFP_THISNODE ;
 int first_node (int ) ;
 int node_isset (int,int ) ;
 struct zonelist* node_zonelist (int,int) ;
 int unlikely (int) ;

__attribute__((used)) static struct zonelist *policy_zonelist(gfp_t gfp, struct mempolicy *policy,
 int nd)
{
 switch (policy->mode) {
 case 128:
  if (!(policy->flags & MPOL_F_LOCAL))
   nd = policy->v.preferred_node;
  break;
 case 130:






  if (unlikely(gfp & __GFP_THISNODE) &&
    unlikely(!node_isset(nd, policy->v.nodes)))
   nd = first_node(policy->v.nodes);
  break;
 case 129:
  break;
 default:
  BUG();
 }
 return node_zonelist(nd, gfp);
}
