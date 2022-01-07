
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int dummy; } ;


 int K_RESIZE ;
 int ui__help_window (char const*) ;
 int ui_browser__handle_resize (struct ui_browser*) ;

int ui_browser__help_window(struct ui_browser *browser, const char *text)
{
 int key;

 while ((key = ui__help_window(text)) == K_RESIZE)
  ui_browser__handle_resize(browser);

 return key;
}
