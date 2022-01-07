
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 int debug_rtx (scalar_t__) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
debug_rtx_range (rtx start, rtx end)
{
  while (1)
    {
      debug_rtx (start);
      fprintf (stderr, "\n");
      if (!start || start == end)
 break;
      start = NEXT_INSN (start);
    }
}
