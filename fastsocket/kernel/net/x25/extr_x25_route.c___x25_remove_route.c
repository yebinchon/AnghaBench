
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ next; } ;
struct x25_route {TYPE_1__ node; } ;


 int list_del (TYPE_1__*) ;
 int x25_route_put (struct x25_route*) ;

__attribute__((used)) static void __x25_remove_route(struct x25_route *rt)
{
 if (rt->node.next) {
  list_del(&rt->node);
  x25_route_put(rt);
 }
}
