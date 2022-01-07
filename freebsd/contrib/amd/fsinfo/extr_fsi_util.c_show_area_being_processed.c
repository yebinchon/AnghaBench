
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STREQ (char*,char*) ;
 int col ;
 int col_cleanup (int ) ;
 int col_output (scalar_t__) ;
 int fflush (int ) ;
 int fprintf (int ,char*,char*) ;
 int fputs (char*,int ) ;
 int show_range ;
 int show_total () ;
 int stdout ;
 scalar_t__ strlen (char*) ;
 int total_mmm ;
 scalar_t__ total_shown ;
 scalar_t__ verbose ;

void
show_area_being_processed(char *area, int n)
{
  static char *last_area = ((void*)0);

  if (verbose < 0)
    return;
  if (last_area) {
    if (total_shown)
      show_total();
    fputs(")", stdout);
    col += 1;
  }

  if (!last_area || !STREQ(area, last_area)) {
    if (last_area) {
      col_cleanup(0);
      total_shown = 0;
      total_mmm = show_range + 1;
    }
    (void) col_output(strlen(area) + 2);
    fprintf(stdout, "[%s", area);
    last_area = area;
  }

  fputs(" (", stdout);
  col += 2;
  show_range = n;
  total_mmm = n + 1;

  fflush(stdout);
}
