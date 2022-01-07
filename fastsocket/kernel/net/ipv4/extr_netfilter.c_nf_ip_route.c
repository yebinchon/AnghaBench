
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;


 int init_net ;
 int ip_route_output_key (int *,struct rtable**,struct flowi*) ;

__attribute__((used)) static int nf_ip_route(struct dst_entry **dst, struct flowi *fl)
{
 return ip_route_output_key(&init_net, (struct rtable **)dst, fl);
}
