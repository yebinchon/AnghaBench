
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zonelist {int dummy; } ;
struct zone {int node; } ;
struct TYPE_3__ {int preferred_node; int nodes; } ;
struct mempolicy {int flags; int mode; TYPE_1__ v; } ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;
struct TYPE_4__ {struct zonelist* node_zonelists; } ;


 int BUG () ;
 int GFP_KERNEL ;

 int MPOL_F_LOCAL ;


 TYPE_2__* NODE_DATA (int) ;
 int first_zones_zonelist (struct zonelist*,int,int *,struct zone**) ;
 int gfp_zone (int ) ;
 int interleave_nodes (struct mempolicy*) ;
 int numa_node_id () ;

unsigned slab_node(struct mempolicy *policy)
{
 if (!policy || policy->flags & MPOL_F_LOCAL)
  return numa_node_id();

 switch (policy->mode) {
 case 128:



  return policy->v.preferred_node;

 case 129:
  return interleave_nodes(policy);

 case 130: {




  struct zonelist *zonelist;
  struct zone *zone;
  enum zone_type highest_zoneidx = gfp_zone(GFP_KERNEL);
  zonelist = &NODE_DATA(numa_node_id())->node_zonelists[0];
  (void)first_zones_zonelist(zonelist, highest_zoneidx,
       &policy->v.nodes,
       &zone);
  return zone->node;
 }

 default:
  BUG();
 }
}
