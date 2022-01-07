
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rt6_info {TYPE_1__* rt6i_node; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ fn_sernum; } ;



__attribute__((used)) static struct dst_entry *ip6_dst_check(struct dst_entry *dst, u32 cookie)
{
 struct rt6_info *rt;

 rt = (struct rt6_info *) dst;

 if (rt && rt->rt6i_node && (rt->rt6i_node->fn_sernum == cookie))
  return dst;

 return ((void*)0);
}
