
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int NOP_INSN ;
 int history ;
 int insert_into_history (int ,int ,int ) ;
 int mips_clear_insn_labels () ;
 int * prev_nop_frag ;

__attribute__((used)) static void
mips_no_prev_insn (void)
{
  prev_nop_frag = ((void*)0);
  insert_into_history (0, ARRAY_SIZE (history), NOP_INSN);
  mips_clear_insn_labels ();
}
