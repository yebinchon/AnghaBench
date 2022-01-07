
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth_in_use; int depth_max; unsigned int* depth; } ;


 TYPE_1__ G ;
 unsigned int* xrealloc (unsigned int*,int) ;

__attribute__((used)) inline static void
push_depth (unsigned int i)
{
  if (G.depth_in_use >= G.depth_max)
    {
      G.depth_max *= 2;
      G.depth = xrealloc (G.depth, G.depth_max * sizeof (unsigned int));
    }
  G.depth[G.depth_in_use++] = i;
}
