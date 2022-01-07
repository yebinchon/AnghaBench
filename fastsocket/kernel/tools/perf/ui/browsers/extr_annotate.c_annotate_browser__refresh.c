
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_browser {scalar_t__ height; } ;
struct TYPE_2__ {scalar_t__ jump_arrows; } ;


 int HE_COLORSET_NORMAL ;
 int __ui_browser__vline (struct ui_browser*,int,int ,scalar_t__) ;
 int annotate_browser__draw_current_jump (struct ui_browser*) ;
 TYPE_1__ annotate_browser__opts ;
 int ui_browser__list_head_refresh (struct ui_browser*) ;
 int ui_browser__set_color (struct ui_browser*,int ) ;

__attribute__((used)) static unsigned int annotate_browser__refresh(struct ui_browser *browser)
{
 int ret = ui_browser__list_head_refresh(browser);

 if (annotate_browser__opts.jump_arrows)
  annotate_browser__draw_current_jump(browser);

 ui_browser__set_color(browser, HE_COLORSET_NORMAL);
 __ui_browser__vline(browser, 7, 0, browser->height - 1);
 return ret;
}
