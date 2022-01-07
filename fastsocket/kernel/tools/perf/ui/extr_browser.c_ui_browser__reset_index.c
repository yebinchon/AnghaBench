
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int (* seek ) (struct ui_browser*,int ,int ) ;scalar_t__ top_idx; scalar_t__ index; } ;


 int SEEK_SET ;
 int stub1 (struct ui_browser*,int ,int ) ;

void ui_browser__reset_index(struct ui_browser *browser)
{
 browser->index = browser->top_idx = 0;
 browser->seek(browser, 0, SEEK_SET);
}
