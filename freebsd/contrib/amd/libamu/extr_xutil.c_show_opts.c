
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opt_tab {scalar_t__ opt; } ;


 int fprintf (int ,char*,int,...) ;
 int fputs (char*,int ) ;
 int stderr ;

void
show_opts(int ch, struct opt_tab *opts)
{
  int i;
  int s = '{';

  fprintf(stderr, "\t[-%c {no}", ch);
  for (i = 0; opts[i].opt; i++) {
    fprintf(stderr, "%c%s", s, opts[i].opt);
    s = ',';
  }
  fputs("}]\n", stderr);
}
