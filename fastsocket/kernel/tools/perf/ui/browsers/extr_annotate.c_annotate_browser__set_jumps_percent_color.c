
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotate_browser {int b; } ;


 int annotate_browser__jumps_percent_color (struct annotate_browser*,int,int) ;
 int ui_browser__set_color (int *,int) ;

__attribute__((used)) static int annotate_browser__set_jumps_percent_color(struct annotate_browser *browser,
           int nr, bool current)
{
  int color = annotate_browser__jumps_percent_color(browser, nr, current);
  return ui_browser__set_color(&browser->b, color);
}
