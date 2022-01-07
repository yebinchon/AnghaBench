
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {unsigned int top_idx; unsigned int nr_entries; unsigned int height; int (* write ) (struct ui_browser*,char**,unsigned int) ;int (* filter ) (struct ui_browser*,char*) ;int * top; int * entries; } ;


 int stub1 (struct ui_browser*,char*) ;
 int stub2 (struct ui_browser*,char**,unsigned int) ;
 int ui_browser__gotorc (struct ui_browser*,unsigned int,int ) ;

unsigned int ui_browser__argv_refresh(struct ui_browser *browser)
{
 unsigned int row = 0, idx = browser->top_idx;
 char **pos;

 if (browser->top == ((void*)0))
  browser->top = browser->entries;

 pos = (char **)browser->top;
 while (idx < browser->nr_entries) {
  if (!browser->filter || !browser->filter(browser, *pos)) {
   ui_browser__gotorc(browser, row, 0);
   browser->write(browser, pos, row);
   if (++row == browser->height)
    break;
  }

  ++idx;
  ++pos;
 }

 return row;
}
