
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int width; } ;


 int HE_COLORSET_NORMAL ;
 int HE_COLORSET_SELECTED ;
 int slsmg_write_nstring (char*,int ) ;
 int ui_browser__is_current_entry (struct ui_browser*,int) ;
 int ui_browser__set_color (struct ui_browser*,int ) ;

__attribute__((used)) static void ui_browser__argv_write(struct ui_browser *browser,
       void *entry, int row)
{
 char **arg = entry;
 bool current_entry = ui_browser__is_current_entry(browser, row);

 ui_browser__set_color(browser, current_entry ? HE_COLORSET_SELECTED :
             HE_COLORSET_NORMAL);
 slsmg_write_nstring(*arg, browser->width);
}
