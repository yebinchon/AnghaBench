
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dummy; } ;
struct net {int dummy; } ;
struct flowi {int dummy; } ;


 int ip_route_output_flow (struct net*,struct rtable**,struct flowi*,int *,int ) ;

int ip_route_output_key(struct net *net, struct rtable **rp, struct flowi *flp)
{
 return ip_route_output_flow(net, rp, flp, ((void*)0), 0);
}
