
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int fprintf (int ,char*) ;
 int outfile ;
 int print_rtx (int ) ;
 scalar_t__ sawclose ;
 int stderr ;

void
debug_rtx (rtx x)
{
  outfile = stderr;
  sawclose = 0;
  print_rtx (x);
  fprintf (stderr, "\n");
}
