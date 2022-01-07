
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ col ;
 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int show_total () ;
 int stdout ;
 scalar_t__ verbose ;

void
col_cleanup(int eoj)
{
  if (verbose < 0)
    return;
  if (eoj) {
    show_total();
    fputs(")]", stdout);
  }
  if (col) {
    fputc('\n', stdout);
    col = 0;
  }
}
