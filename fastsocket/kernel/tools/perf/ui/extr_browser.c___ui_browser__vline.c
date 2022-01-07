
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ui_browser {int dummy; } ;


 int SLsmg_draw_vline (scalar_t__) ;
 int SLsmg_set_char_set (int) ;
 int ui_browser__gotorc (struct ui_browser*,scalar_t__,unsigned int) ;

void __ui_browser__vline(struct ui_browser *browser, unsigned int column,
    u16 start, u16 end)
{
 SLsmg_set_char_set(1);
 ui_browser__gotorc(browser, start, column);
 SLsmg_draw_vline(end - start + 1);
 SLsmg_set_char_set(0);
}
