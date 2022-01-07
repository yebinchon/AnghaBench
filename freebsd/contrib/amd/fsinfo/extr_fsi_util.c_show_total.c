
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;


 scalar_t__ col_output (int) ;
 int fflush (int ) ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int show_range ;
 int stdout ;
 int strlen (char*) ;
 int total_mmm ;
 int total_shown ;
 int xsnprintf (char*,int,char*,int ) ;

__attribute__((used)) static void
show_total(void)
{
  if (total_mmm != -show_range + 1) {
    char n[8];
    int len;

    if (total_mmm < 0)
      fputc('*', stdout);
    xsnprintf(n, sizeof(n), "%d", total_shown);
    len = strlen(n);
    if (col_output(len))
      fputc(' ', stdout);
    fputs(n, stdout);
    fflush(stdout);
    total_mmm = -show_range;
  }
}
