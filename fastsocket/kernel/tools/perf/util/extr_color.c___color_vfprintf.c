
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 char* PERF_COLOR_RESET ;
 int fileno (int *) ;
 scalar_t__ fprintf (int *,char*,char const*) ;
 scalar_t__ isatty (int ) ;
 scalar_t__ pager_in_use () ;
 int perf_use_color_default ;
 scalar_t__ vfprintf (int *,char const*,int ) ;

__attribute__((used)) static int __color_vfprintf(FILE *fp, const char *color, const char *fmt,
  va_list args, const char *trail)
{
 int r = 0;




 if (perf_use_color_default < 0) {
  if (isatty(fileno(fp)) || pager_in_use())
   perf_use_color_default = 1;
  else
   perf_use_color_default = 0;
 }

 if (perf_use_color_default && *color)
  r += fprintf(fp, "%s", color);
 r += vfprintf(fp, fmt, args);
 if (perf_use_color_default && *color)
  r += fprintf(fp, "%s", PERF_COLOR_RESET);
 if (trail)
  r += fprintf(fp, "%s", trail);
 return r;
}
