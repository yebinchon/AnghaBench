
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct zonelist {TYPE_1__* _zonerefs; } ;
struct TYPE_7__ {int node_id; struct zonelist* node_zonelists; } ;
typedef TYPE_2__ pg_data_t ;
typedef enum zone_type { ____Placeholder_zone_type } zone_type ;
struct TYPE_6__ {scalar_t__ zone_idx; int * zone; } ;


 scalar_t__ MAX_NR_ZONES ;
 int MAX_NUMNODES ;
 TYPE_2__* NODE_DATA (int) ;
 int build_zonelists_node (TYPE_2__*,struct zonelist*,int,scalar_t__) ;
 int node_online (int) ;

__attribute__((used)) static void build_zonelists(pg_data_t *pgdat)
{
 int node, local_node;
 enum zone_type j;
 struct zonelist *zonelist;

 local_node = pgdat->node_id;

 zonelist = &pgdat->node_zonelists[0];
 j = build_zonelists_node(pgdat, zonelist, 0, MAX_NR_ZONES - 1);
 for (node = local_node + 1; node < MAX_NUMNODES; node++) {
  if (!node_online(node))
   continue;
  j = build_zonelists_node(NODE_DATA(node), zonelist, j,
       MAX_NR_ZONES - 1);
 }
 for (node = 0; node < local_node; node++) {
  if (!node_online(node))
   continue;
  j = build_zonelists_node(NODE_DATA(node), zonelist, j,
       MAX_NR_ZONES - 1);
 }

 zonelist->_zonerefs[j].zone = ((void*)0);
 zonelist->_zonerefs[j].zone_idx = 0;
}
