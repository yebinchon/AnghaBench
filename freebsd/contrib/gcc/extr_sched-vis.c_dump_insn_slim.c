
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef int FILE ;


 int BUF_LEN ;
 char* GET_REG_NOTE_NAME (int ) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 int REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int fprintf (int *,char*,char*,char*) ;
 int fputs (char*,int *) ;
 int print_insn (char*,scalar_t__,int) ;
 int print_value (char*,scalar_t__,int) ;
 int putc (char,int *) ;

void
dump_insn_slim (FILE *f, rtx x)
{
  char t[BUF_LEN + 32];
  rtx note;

  print_insn (t, x, 1);
  fputs (t, f);
  putc ('\n', f);
  if (INSN_P (x) && REG_NOTES (x))
    for (note = REG_NOTES (x); note; note = XEXP (note, 1))
      {
        print_value (t, XEXP (note, 0), 1);
 fprintf (f, "      %s: %s\n",
   GET_REG_NOTE_NAME (REG_NOTE_KIND (note)), t);
      }
}
