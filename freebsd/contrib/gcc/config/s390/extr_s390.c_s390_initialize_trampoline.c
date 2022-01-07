
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 scalar_t__ TARGET_64BIT ;
 int emit_move_insn (int ,int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int memory_address (int ,int ) ;
 int plus_constant (int ,int) ;

void
s390_initialize_trampoline (rtx addr, rtx fnaddr, rtx cxt)
{
  emit_move_insn (gen_rtx_MEM (Pmode,
     memory_address (Pmode,
     plus_constant (addr, (TARGET_64BIT ? 16 : 8)))), cxt);
  emit_move_insn (gen_rtx_MEM (Pmode,
     memory_address (Pmode,
     plus_constant (addr, (TARGET_64BIT ? 24 : 12)))), fnaddr);
}
