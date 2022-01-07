
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct rt6_info* rt6_next; } ;
struct TYPE_4__ {TYPE_1__ dst; } ;
struct rt6_info {TYPE_2__ u; } ;
struct fib6_walker_t {struct rt6_info* leaf; int args; } ;


 int WARN_ON (int) ;
 int rt6_dump_route (struct rt6_info*,int ) ;

__attribute__((used)) static int fib6_dump_node(struct fib6_walker_t *w)
{
 int res;
 struct rt6_info *rt;

 for (rt = w->leaf; rt; rt = rt->u.dst.rt6_next) {
  res = rt6_dump_route(rt, w->args);
  if (res < 0) {

   w->leaf = rt;
   return 1;
  }
  WARN_ON(res == 0);
 }
 w->leaf = ((void*)0);
 return 0;
}
