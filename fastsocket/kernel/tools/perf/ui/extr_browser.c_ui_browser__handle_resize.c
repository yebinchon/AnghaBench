
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int title; } ;


 int ui__refresh_dimensions (int) ;
 int ui_browser__refresh (struct ui_browser*) ;
 int ui_browser__show (struct ui_browser*,int ,int ) ;
 int ui_helpline__current ;

void ui_browser__handle_resize(struct ui_browser *browser)
{
 ui__refresh_dimensions(0);
 ui_browser__show(browser, browser->title, ui_helpline__current);
 ui_browser__refresh(browser);
}
