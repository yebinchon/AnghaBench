
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double MIN_GREEN ;
 double MIN_RED ;

__attribute__((used)) static const char *perf_gtk__get_percent_color(double percent)
{
 if (percent >= MIN_RED)
  return "<span fgcolor='red'>";
 if (percent >= MIN_GREEN)
  return "<span fgcolor='dark green'>";
 return ((void*)0);
}
