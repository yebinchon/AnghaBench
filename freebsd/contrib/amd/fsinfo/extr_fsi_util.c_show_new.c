
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int col ;
 int fflush (int ) ;
 int fputc (char,int ) ;
 scalar_t__ show_range ;
 int show_total () ;
 int stdout ;
 scalar_t__ total_mmm ;
 int total_shown ;
 scalar_t__ verbose ;

void
show_new(char *msg)
{
  if (verbose < 0)
    return;

  total_shown++;
  if (total_mmm > show_range) {
    show_total();
  } else if (total_mmm == 0) {
    fputc('*', stdout);
    fflush(stdout);
    col += 1;
  }
  total_mmm++;
}
