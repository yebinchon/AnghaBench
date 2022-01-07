
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int FILE ;





 int GET_CODE (scalar_t__) ;


 scalar_t__ NEXT_INSN (scalar_t__) ;

 int NOTE_LINE_NUMBER (scalar_t__) ;
 int NOTE_P (scalar_t__) ;
 int flag_dump_unnumbered ;
 int fprintf (int *,char*) ;
 int fputs (char*,int *) ;
 int * outfile ;
 int print_rtx (scalar_t__) ;
 char* print_rtx_head ;
 scalar_t__ sawclose ;

void
print_rtl (FILE *outf, rtx rtx_first)
{
  rtx tmp_rtx;

  outfile = outf;
  sawclose = 0;

  if (rtx_first == 0)
    {
      fputs (print_rtx_head, outf);
      fputs ("(nil)\n", outf);
    }
  else
    switch (GET_CODE (rtx_first))
      {
      case 130:
      case 129:
      case 132:
      case 128:
      case 131:
      case 133:
 for (tmp_rtx = rtx_first; tmp_rtx != 0; tmp_rtx = NEXT_INSN (tmp_rtx))
   if (! flag_dump_unnumbered
       || !NOTE_P (tmp_rtx) || NOTE_LINE_NUMBER (tmp_rtx) < 0)
     {
       fputs (print_rtx_head, outfile);
       print_rtx (tmp_rtx);
       fprintf (outfile, "\n");
     }
 break;

      default:
 fputs (print_rtx_head, outfile);
 print_rtx (rtx_first);
      }
}
