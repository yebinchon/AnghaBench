
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct hist_browser {int hists; TYPE_1__ b; } ;


 int hists__sort_list_width (int ) ;

__attribute__((used)) static void hist_browser__refresh_dimensions(struct hist_browser *browser)
{

 browser->b.width = 3 + (hists__sort_list_width(browser->hists) +
        sizeof("[k]"));
}
