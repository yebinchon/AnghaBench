
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dump_trace ;
 int isatty (int) ;
 int perf_gtk__init () ;
 int perf_hpp__init () ;
 int setup_pager () ;
 int ui__init () ;
 int use_browser ;

void setup_browser(bool fallback_to_pager)
{
 if (!isatty(1) || dump_trace)
  use_browser = 0;


 if (use_browser < 0)
  use_browser = 1;

 switch (use_browser) {
 case 2:
  if (perf_gtk__init() == 0)
   break;

 case 1:
  use_browser = 1;
  if (ui__init() == 0)
   break;

 default:
  use_browser = 0;
  if (fallback_to_pager)
   setup_pager();

  perf_hpp__init();
  break;
 }
}
