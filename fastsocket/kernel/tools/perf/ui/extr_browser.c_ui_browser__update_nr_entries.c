
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef void* u32 ;
struct ui_browser {void* nr_entries; scalar_t__ top_idx; scalar_t__ index; int (* seek ) (struct ui_browser*,scalar_t__,int ) ;int * top; } ;
typedef scalar_t__ off_t ;


 int SEEK_SET ;
 int stub1 (struct ui_browser*,scalar_t__,int ) ;

void ui_browser__update_nr_entries(struct ui_browser *browser, u32 nr_entries)
{
 off_t offset = nr_entries - browser->nr_entries;

 browser->nr_entries = nr_entries;

 if (offset < 0) {
  if (browser->top_idx < (u64)-offset)
   offset = -browser->top_idx;

  browser->index += offset;
  browser->top_idx += offset;
 }

 browser->top = ((void*)0);
 browser->seek(browser, browser->top_idx, SEEK_SET);
}
