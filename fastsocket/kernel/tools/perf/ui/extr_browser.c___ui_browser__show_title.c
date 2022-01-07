
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {scalar_t__ width; } ;


 int NEWT_COLORSET_ROOT ;
 int SLsmg_gotorc (int ,int ) ;
 int slsmg_write_nstring (char const*,scalar_t__) ;
 int ui_browser__set_color (struct ui_browser*,int ) ;

void __ui_browser__show_title(struct ui_browser *browser, const char *title)
{
 SLsmg_gotorc(0, 0);
 ui_browser__set_color(browser, NEWT_COLORSET_ROOT);
 slsmg_write_nstring(title, browser->width + 1);
}
