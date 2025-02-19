
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 char const* PERF_COLOR_RESET ;
 scalar_t__ isatty (int) ;
 scalar_t__ pager_in_use () ;
 int perf_use_color_default ;
 scalar_t__ scnprintf (char*,size_t,char*,char const*) ;
 scalar_t__ vscnprintf (char*,size_t,char const*,int ) ;

__attribute__((used)) static int __color_vsnprintf(char *bf, size_t size, const char *color,
        const char *fmt, va_list args, const char *trail)
{
 int r = 0;




 if (perf_use_color_default < 0) {
  if (isatty(1) || pager_in_use())
   perf_use_color_default = 1;
  else
   perf_use_color_default = 0;
 }

 if (perf_use_color_default && *color)
  r += scnprintf(bf, size, "%s", color);
 r += vscnprintf(bf + r, size - r, fmt, args);
 if (perf_use_color_default && *color)
  r += scnprintf(bf + r, size - r, "%s", PERF_COLOR_RESET);
 if (trail)
  r += scnprintf(bf + r, size - r, "%s", trail);
 return r;
}
