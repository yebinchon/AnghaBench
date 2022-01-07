
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hist_entry {int ms; } ;


 char map_symbol__folded (int *) ;

__attribute__((used)) static char hist_entry__folded(const struct hist_entry *he)
{
 return map_symbol__folded(&he->ms);
}
