
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_symbol {int unfolded; int has_children; } ;



__attribute__((used)) static void map_symbol__set_folding(struct map_symbol *ms, bool unfold)
{
 ms->unfolded = unfold ? ms->has_children : 0;
}
