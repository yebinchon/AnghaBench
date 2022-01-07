
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int FILE ;


 scalar_t__ NOTE_LINE_NUMBER (int ) ;
 int NOTE_P (int ) ;
 int flag_dump_unnumbered ;
 int fputs (int ,int *) ;
 int * outfile ;
 int print_rtx (int ) ;
 int print_rtx_head ;
 int putc (char,int *) ;
 scalar_t__ sawclose ;

int
print_rtl_single (FILE *outf, rtx x)
{
  outfile = outf;
  sawclose = 0;
  if (! flag_dump_unnumbered
      || !NOTE_P (x) || NOTE_LINE_NUMBER (x) < 0)
    {
      fputs (print_rtx_head, outfile);
      print_rtx (x);
      putc ('\n', outf);
      return 1;
    }
  return 0;
}
