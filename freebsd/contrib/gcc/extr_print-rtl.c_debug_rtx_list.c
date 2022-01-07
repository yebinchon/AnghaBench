
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 int debug_rtx (scalar_t__) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
debug_rtx_list (rtx x, int n)
{
  int i,count;
  rtx insn;

  count = n == 0 ? 1 : n < 0 ? -n : n;



  if (n < 0)
    for (i = count / 2; i > 0; i--)
      {
 if (PREV_INSN (x) == 0)
   break;
 x = PREV_INSN (x);
      }

  for (i = count, insn = x; i > 0 && insn != 0; i--, insn = NEXT_INSN (insn))
    {
      debug_rtx (insn);
      fprintf (stderr, "\n");
    }
}
