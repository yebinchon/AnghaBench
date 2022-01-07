
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int color_fprintf (int *,char const*,char const*,double) ;
 char* get_percent_color (double) ;

int percent_color_fprintf(FILE *fp, const char *fmt, double percent)
{
 int r;
 const char *color;

 color = get_percent_color(percent);
 r = color_fprintf(fp, color, fmt, percent);

 return r;
}
