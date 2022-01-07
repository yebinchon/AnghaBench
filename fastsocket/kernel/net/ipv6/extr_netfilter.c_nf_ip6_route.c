
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {int dummy; } ;
struct dst_entry {int error; } ;


 int init_net ;
 struct dst_entry* ip6_route_output (int *,int *,struct flowi*) ;

__attribute__((used)) static int nf_ip6_route(struct dst_entry **dst, struct flowi *fl)
{
 *dst = ip6_route_output(&init_net, ((void*)0), fl);
 return (*dst)->error;
}
