
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {scalar_t__ designated_cost; scalar_t__ port_id; scalar_t__ designated_port; int designated_bridge; int designated_root; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ root_path_cost; int bridge_id; int designated_root; } ;


 scalar_t__ br_is_designated_port (struct net_bridge_port const*) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int br_should_become_designated_port(const struct net_bridge_port *p)
{
 struct net_bridge *br;
 int t;

 br = p->br;
 if (br_is_designated_port(p))
  return 1;

 if (memcmp(&p->designated_root, &br->designated_root, 8))
  return 1;

 if (br->root_path_cost < p->designated_cost)
  return 1;
 else if (br->root_path_cost > p->designated_cost)
  return 0;

 t = memcmp(&br->bridge_id, &p->designated_bridge, 8);
 if (t < 0)
  return 1;
 else if (t > 0)
  return 0;

 if (p->port_id < p->designated_port)
  return 1;

 return 0;
}
