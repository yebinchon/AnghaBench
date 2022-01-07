
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ unfolded; } ;
struct hist_entry {scalar_t__ nr_rows; int sorted_chain; TYPE_1__ ms; } ;
struct TYPE_5__ {int nr_entries; } ;
struct hist_browser {TYPE_3__* hists; TYPE_2__ b; struct hist_entry* he_selection; int selection; } ;
struct TYPE_6__ {int nr_entries; } ;


 scalar_t__ callchain__count_rows (int *) ;
 int hist_entry__init_have_children (struct hist_entry*) ;
 scalar_t__ map_symbol__toggle_fold (int ) ;

__attribute__((used)) static bool hist_browser__toggle_fold(struct hist_browser *browser)
{
 if (map_symbol__toggle_fold(browser->selection)) {
  struct hist_entry *he = browser->he_selection;

  hist_entry__init_have_children(he);
  browser->hists->nr_entries -= he->nr_rows;

  if (he->ms.unfolded)
   he->nr_rows = callchain__count_rows(&he->sorted_chain);
  else
   he->nr_rows = 0;
  browser->hists->nr_entries += he->nr_rows;
  browser->b.nr_entries = browser->hists->nr_entries;

  return 1;
 }


 return 0;
}
