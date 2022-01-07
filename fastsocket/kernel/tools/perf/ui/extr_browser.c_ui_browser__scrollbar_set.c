
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_browser {int height; int width; int y; int nr_entries; int index; } ;


 int SLSMG_CKBRD_CHAR ;
 int SLSMG_DIAMOND_CHAR ;
 int SLsmg_set_char_set (int) ;
 int SLsmg_write_char (int ) ;
 int ui_browser__gotorc (struct ui_browser*,int ,int) ;

__attribute__((used)) static void ui_browser__scrollbar_set(struct ui_browser *browser)
{
 int height = browser->height, h = 0, pct = 0,
     col = browser->width,
     row = browser->y - 1;

 if (browser->nr_entries > 1) {
  pct = ((browser->index * (browser->height - 1)) /
         (browser->nr_entries - 1));
 }

 SLsmg_set_char_set(1);

 while (h < height) {
         ui_browser__gotorc(browser, row++, col);
  SLsmg_write_char(h == pct ? SLSMG_DIAMOND_CHAR : SLSMG_CKBRD_CHAR);
  ++h;
 }

 SLsmg_set_char_set(0);
}
