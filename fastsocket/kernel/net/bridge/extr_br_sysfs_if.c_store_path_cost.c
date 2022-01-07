
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dummy; } ;
typedef int ssize_t ;


 int br_stp_set_path_cost (struct net_bridge_port*,unsigned long) ;

__attribute__((used)) static ssize_t store_path_cost(struct net_bridge_port *p, unsigned long v)
{
 br_stp_set_path_cost(p, v);
 return 0;
}
