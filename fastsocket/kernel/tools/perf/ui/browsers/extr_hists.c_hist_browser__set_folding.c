
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nr_entries; } ;
struct hist_browser {TYPE_1__ b; TYPE_2__* hists; } ;
struct TYPE_4__ {int nr_entries; } ;


 int hists__set_folding (TYPE_2__*,int) ;
 int ui_browser__reset_index (TYPE_1__*) ;

__attribute__((used)) static void hist_browser__set_folding(struct hist_browser *browser, bool unfold)
{
 hists__set_folding(browser->hists, unfold);
 browser->b.nr_entries = browser->hists->nr_entries;

 ui_browser__reset_index(&browser->b);
}
