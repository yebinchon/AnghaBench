
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct annotate_browser {int dummy; } ;


 int __annotate_browser__search_reverse (struct annotate_browser*) ;
 scalar_t__ annotate_browser__search_window (struct annotate_browser*,int) ;

__attribute__((used)) static bool annotate_browser__search_reverse(struct annotate_browser *browser,
        int delay_secs)
{
 if (annotate_browser__search_window(browser, delay_secs))
  return __annotate_browser__search_reverse(browser);

 return 0;
}
