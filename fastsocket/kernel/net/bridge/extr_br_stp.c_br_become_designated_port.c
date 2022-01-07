
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int port_id; int designated_port; int designated_bridge; int designated_cost; int designated_root; struct net_bridge* br; } ;
struct net_bridge {int bridge_id; int root_path_cost; int designated_root; } ;



void br_become_designated_port(struct net_bridge_port *p)
{
 struct net_bridge *br;

 br = p->br;
 p->designated_root = br->designated_root;
 p->designated_cost = br->root_path_cost;
 p->designated_bridge = br->bridge_id;
 p->designated_port = p->port_id;
}
