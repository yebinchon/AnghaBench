
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {scalar_t__ designated_cost; scalar_t__ designated_port; TYPE_1__* br; int designated_bridge; int designated_root; } ;
struct br_config_bpdu {scalar_t__ root_path_cost; scalar_t__ port_id; int bridge_id; int root; } ;
struct TYPE_2__ {int bridge_id; } ;


 int memcmp (int *,int *,int) ;

__attribute__((used)) static int br_supersedes_port_info(struct net_bridge_port *p, struct br_config_bpdu *bpdu)
{
 int t;

 t = memcmp(&bpdu->root, &p->designated_root, 8);
 if (t < 0)
  return 1;
 else if (t > 0)
  return 0;

 if (bpdu->root_path_cost < p->designated_cost)
  return 1;
 else if (bpdu->root_path_cost > p->designated_cost)
  return 0;

 t = memcmp(&bpdu->bridge_id, &p->designated_bridge, 8);
 if (t < 0)
  return 1;
 else if (t > 0)
  return 0;

 if (memcmp(&bpdu->bridge_id, &p->br->bridge_id, 8))
  return 1;

 if (bpdu->port_id <= p->designated_port)
  return 1;

 return 0;
}
