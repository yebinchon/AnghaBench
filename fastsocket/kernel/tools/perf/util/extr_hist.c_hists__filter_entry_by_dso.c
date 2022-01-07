
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hists {int * dso_filter; } ;
struct TYPE_4__ {TYPE_1__* map; } ;
struct hist_entry {int filtered; TYPE_2__ ms; } ;
struct TYPE_3__ {int * dso; } ;


 int HIST_FILTER__DSO ;

__attribute__((used)) static bool hists__filter_entry_by_dso(struct hists *hists,
           struct hist_entry *he)
{
 if (hists->dso_filter != ((void*)0) &&
     (he->ms.map == ((void*)0) || he->ms.map->dso != hists->dso_filter)) {
  he->filtered |= (1 << HIST_FILTER__DSO);
  return 1;
 }

 return 0;
}
