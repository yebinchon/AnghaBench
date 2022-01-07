
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int width; int (* refresh ) (struct ui_browser*) ;scalar_t__ height; int x; scalar_t__ y; scalar_t__ navkeypressed; int use_navkeypressed; } ;


 int HE_COLORSET_NORMAL ;
 int SLsmg_fill_region (scalar_t__,int ,scalar_t__,int,char) ;
 int stub1 (struct ui_browser*) ;
 int ui_browser__scrollbar_set (struct ui_browser*) ;
 int ui_browser__set_color (struct ui_browser*,int ) ;

__attribute__((used)) static int __ui_browser__refresh(struct ui_browser *browser)
{
 int row;
 int width = browser->width;

 row = browser->refresh(browser);
 ui_browser__set_color(browser, HE_COLORSET_NORMAL);

 if (!browser->use_navkeypressed || browser->navkeypressed)
  ui_browser__scrollbar_set(browser);
 else
  width += 1;

 SLsmg_fill_region(browser->y + row, browser->x,
     browser->height - row, width, ' ');

 return 0;
}
