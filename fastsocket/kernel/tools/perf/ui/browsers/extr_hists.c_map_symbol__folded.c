
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_symbol {int unfolded; scalar_t__ has_children; } ;


 char tree__folded_sign (int ) ;

__attribute__((used)) static char map_symbol__folded(const struct map_symbol *ms)
{
 return ms->has_children ? tree__folded_sign(ms->unfolded) : ' ';
}
