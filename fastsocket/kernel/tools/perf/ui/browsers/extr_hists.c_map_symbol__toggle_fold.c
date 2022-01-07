
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_symbol {int unfolded; int has_children; } ;



__attribute__((used)) static bool map_symbol__toggle_fold(struct map_symbol *ms)
{
 if (!ms)
  return 0;

 if (!ms->has_children)
  return 0;

 ms->unfolded = !ms->unfolded;
 return 1;
}
