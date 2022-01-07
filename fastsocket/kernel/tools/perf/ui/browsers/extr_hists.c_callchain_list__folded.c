
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_list {int ms; } ;


 char map_symbol__folded (int *) ;

__attribute__((used)) static char callchain_list__folded(const struct callchain_list *cl)
{
 return map_symbol__folded(&cl->ms);
}
