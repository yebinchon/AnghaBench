
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int INSN_UID (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int debug_rtx_count ;
 int debug_rtx_list (scalar_t__,int ) ;
 int fprintf (int ,char*,int) ;
 int stderr ;

rtx
debug_rtx_find (rtx x, int uid)
{
  while (x != 0 && INSN_UID (x) != uid)
    x = NEXT_INSN (x);
  if (x != 0)
    {
      debug_rtx_list (x, debug_rtx_count);
      return x;
    }
  else
    {
      fprintf (stderr, "insn uid %d not found\n", uid);
      return 0;
    }
}
