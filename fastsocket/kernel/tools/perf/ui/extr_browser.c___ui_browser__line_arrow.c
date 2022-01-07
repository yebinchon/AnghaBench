
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct ui_browser {int dummy; } ;


 int __ui_browser__line_arrow_down (struct ui_browser*,unsigned int,scalar_t__,scalar_t__) ;
 int __ui_browser__line_arrow_up (struct ui_browser*,unsigned int,scalar_t__,scalar_t__) ;

void __ui_browser__line_arrow(struct ui_browser *browser, unsigned int column,
         u64 start, u64 end)
{
 if (start > end)
  __ui_browser__line_arrow_up(browser, column, start, end);
 else
  __ui_browser__line_arrow_down(browser, column, start, end);
}
