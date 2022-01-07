
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef int * basic_block ;
typedef int FILE ;


 int * BB_END (int *) ;
 int * BLOCK_FOR_INSN (int *) ;
 scalar_t__ GET_CODE (int *) ;
 scalar_t__ INSN_P (int *) ;
 int * NEXT_INSN (int *) ;
 scalar_t__ NOTE ;
 int TDF_BLOCKS ;
 int dump_bb_info (int *,int,int,int,char*,int *) ;
 int dump_insn_slim (int *,int *) ;

void
print_rtl_slim_with_bb (FILE *f, rtx first, int flags)
{
  basic_block current_bb = ((void*)0);
  rtx insn;

  for (insn = first; ((void*)0) != insn; insn = NEXT_INSN (insn))
    {
      if ((flags & TDF_BLOCKS)
   && (INSN_P (insn) || GET_CODE (insn) == NOTE)
   && BLOCK_FOR_INSN (insn)
   && !current_bb)
 {
   current_bb = BLOCK_FOR_INSN (insn);
   dump_bb_info (current_bb, 1, 0, flags, ";; ", f);
 }

      dump_insn_slim (f, insn);

      if ((flags & TDF_BLOCKS)
   && current_bb
   && insn == BB_END (current_bb))
 {
   dump_bb_info (current_bb, 0, 1, flags, ";; ", f);
   current_bb = ((void*)0);
 }
    }
}
