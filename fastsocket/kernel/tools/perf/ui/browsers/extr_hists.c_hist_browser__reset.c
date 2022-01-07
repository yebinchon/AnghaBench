
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_entries; } ;
struct hist_browser {TYPE_2__ b; TYPE_1__* hists; } ;
struct TYPE_3__ {int nr_entries; } ;


 int hist_browser__refresh_dimensions (struct hist_browser*) ;
 int ui_browser__reset_index (TYPE_2__*) ;

__attribute__((used)) static void hist_browser__reset(struct hist_browser *browser)
{
 browser->b.nr_entries = browser->hists->nr_entries;
 hist_browser__refresh_dimensions(browser);
 ui_browser__reset_index(&browser->b);
}
