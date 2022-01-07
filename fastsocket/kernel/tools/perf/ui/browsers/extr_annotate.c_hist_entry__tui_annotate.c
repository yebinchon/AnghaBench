
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; int sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct hist_browser_timer {int dummy; } ;


 int symbol__tui_annotate (int ,int ,int,struct hist_browser_timer*) ;

int hist_entry__tui_annotate(struct hist_entry *he, int evidx,
        struct hist_browser_timer *hbt)
{
 return symbol__tui_annotate(he->ms.sym, he->ms.map, evidx, hbt);
}
