
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MIN_GREEN ;
 double MIN_RED ;
 char* PERF_COLOR_GREEN ;
 char* PERF_COLOR_NORMAL ;
 char* PERF_COLOR_RED ;

const char *get_percent_color(double percent)
{
 const char *color = PERF_COLOR_NORMAL;






 if (percent >= MIN_RED)
  color = PERF_COLOR_RED;
 else {
  if (percent > MIN_GREEN)
   color = PERF_COLOR_GREEN;
 }
 return color;
}
