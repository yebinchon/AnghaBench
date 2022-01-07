
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOP_INSN ;
 int add_fixed_insn (int ) ;
 int insert_into_history (int ,int,int ) ;

__attribute__((used)) static void
emit_nop (void)
{
  add_fixed_insn (NOP_INSN);
  insert_into_history (0, 1, NOP_INSN);
}
