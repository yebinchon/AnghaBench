
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct probe_finder {TYPE_2__* pev; int fname; int lcache; } ;
struct TYPE_3__ {int lazy_line; } ;
struct TYPE_4__ {TYPE_1__ point; } ;
typedef int Dwarf_Die ;


 int die_walk_lines (int *,int ,struct probe_finder*) ;
 int find_lazy_match_lines (int *,int ,int ) ;
 scalar_t__ list_empty (int *) ;
 int probe_point_lazy_walker ;

__attribute__((used)) static int find_probe_point_lazy(Dwarf_Die *sp_die, struct probe_finder *pf)
{
 int ret = 0;

 if (list_empty(&pf->lcache)) {

  ret = find_lazy_match_lines(&pf->lcache, pf->fname,
         pf->pev->point.lazy_line);
  if (ret <= 0)
   return ret;
 }

 return die_walk_lines(sp_die, probe_point_lazy_walker, pf);
}
