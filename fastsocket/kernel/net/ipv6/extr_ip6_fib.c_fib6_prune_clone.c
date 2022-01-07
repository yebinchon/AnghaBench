
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt6_info {int rt6i_flags; } ;


 int RT6_TRACE (char*,struct rt6_info*) ;
 int RTF_CACHE ;

__attribute__((used)) static int fib6_prune_clone(struct rt6_info *rt, void *arg)
{
 if (rt->rt6i_flags & RTF_CACHE) {
  RT6_TRACE("pruning clone %p\n", rt);
  return -1;
 }

 return 0;
}
