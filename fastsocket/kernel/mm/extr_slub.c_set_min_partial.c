
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {unsigned long min_partial; } ;


 unsigned long MAX_PARTIAL ;
 unsigned long MIN_PARTIAL ;

__attribute__((used)) static void set_min_partial(struct kmem_cache *s, unsigned long min)
{
 if (min < MIN_PARTIAL)
  min = MIN_PARTIAL;
 else if (min > MAX_PARTIAL)
  min = MAX_PARTIAL;
 s->min_partial = min;
}
