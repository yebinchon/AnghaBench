
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int navkeypressed; int index; int nr_entries; int top_idx; int height; int (* seek ) (struct ui_browser*,int,int ) ;scalar_t__ use_navkeypressed; int helpline; int title; } ;
typedef int off_t ;







 int K_RESIZE ;

 int SEEK_CUR ;
 int SEEK_END ;
 int SLsmg_refresh () ;
 int __ui_browser__refresh (struct ui_browser*) ;
 int __ui_browser__show_title (struct ui_browser*,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stub1 (struct ui_browser*,int,int ) ;
 int stub2 (struct ui_browser*,int,int ) ;
 int stub3 (struct ui_browser*,int,int ) ;
 int stub4 (struct ui_browser*,int,int ) ;
 int stub5 (struct ui_browser*,int,int ) ;
 int ui__getch (int) ;
 int ui__lock ;
 int ui__refresh_dimensions (int) ;
 int ui_browser__refresh_dimensions (struct ui_browser*) ;
 int ui_browser__reset_index (struct ui_browser*) ;
 int ui_helpline__puts (int ) ;

int ui_browser__run(struct ui_browser *browser, int delay_secs)
{
 int err, key;

 while (1) {
  off_t offset;

  pthread_mutex_lock(&ui__lock);
  err = __ui_browser__refresh(browser);
  SLsmg_refresh();
  pthread_mutex_unlock(&ui__lock);
  if (err < 0)
   break;

  key = ui__getch(delay_secs);

  if (key == K_RESIZE) {
   ui__refresh_dimensions(0);
   ui_browser__refresh_dimensions(browser);
   __ui_browser__show_title(browser, browser->title);
   ui_helpline__puts(browser->helpline);
   continue;
  }

  if (browser->use_navkeypressed && !browser->navkeypressed) {
   if (key == 133 || key == 128 ||
       key == 130 || key == 129 ||
       key == 131 || key == 132 ||
       key == ' ') {
    browser->navkeypressed = 1;
    continue;
   } else
    return key;
  }

  switch (key) {
  case 133:
   if (browser->index == browser->nr_entries - 1)
    break;
   ++browser->index;
   if (browser->index == browser->top_idx + browser->height) {
    ++browser->top_idx;
    browser->seek(browser, +1, SEEK_CUR);
   }
   break;
  case 128:
   if (browser->index == 0)
    break;
   --browser->index;
   if (browser->index < browser->top_idx) {
    --browser->top_idx;
    browser->seek(browser, -1, SEEK_CUR);
   }
   break;
  case 130:
  case ' ':
   if (browser->top_idx + browser->height > browser->nr_entries - 1)
    break;

   offset = browser->height;
   if (browser->index + offset > browser->nr_entries - 1)
    offset = browser->nr_entries - 1 - browser->index;
   browser->index += offset;
   browser->top_idx += offset;
   browser->seek(browser, +offset, SEEK_CUR);
   break;
  case 129:
   if (browser->top_idx == 0)
    break;

   if (browser->top_idx < browser->height)
    offset = browser->top_idx;
   else
    offset = browser->height;

   browser->index -= offset;
   browser->top_idx -= offset;
   browser->seek(browser, -offset, SEEK_CUR);
   break;
  case 131:
   ui_browser__reset_index(browser);
   break;
  case 132:
   offset = browser->height - 1;
   if (offset >= browser->nr_entries)
    offset = browser->nr_entries - 1;

   browser->index = browser->nr_entries - 1;
   browser->top_idx = browser->index - offset;
   browser->seek(browser, -offset, SEEK_END);
   break;
  default:
   return key;
  }
 }
 return -1;
}
