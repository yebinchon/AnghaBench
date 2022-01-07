
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ context_depth; } ;
typedef TYPE_1__ page_entry ;
struct TYPE_4__ {int by_depth_in_use; size_t depth_in_use; TYPE_1__** by_depth; } ;


 TYPE_2__ G ;

__attribute__((used)) static inline void
adjust_depth (void)
{
  page_entry *top;

  if (G.by_depth_in_use)
    {
      top = G.by_depth[G.by_depth_in_use-1];




      while (G.depth_in_use > (size_t)top->context_depth+1)
 --G.depth_in_use;
    }
}
