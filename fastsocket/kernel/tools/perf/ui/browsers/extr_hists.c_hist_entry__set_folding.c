
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_children; } ;
struct hist_entry {int nr_rows; int sorted_chain; TYPE_1__ ms; } ;


 int callchain__set_folding (int *,int) ;
 int hist_entry__init_have_children (struct hist_entry*) ;
 int map_symbol__set_folding (TYPE_1__*,int) ;

__attribute__((used)) static void hist_entry__set_folding(struct hist_entry *he, bool unfold)
{
 hist_entry__init_have_children(he);
 map_symbol__set_folding(&he->ms, unfold);

 if (he->ms.has_children) {
  int n = callchain__set_folding(&he->sorted_chain, unfold);
  he->nr_rows = unfold ? n : 0;
 } else
  he->nr_rows = 0;
}
