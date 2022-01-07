
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int BLKmode ;
 int Pmode ;
 int STACK_POINTER_REGNUM ;
 int emit_insn (int ) ;
 int gen_frame_mem (int ,int ) ;
 int gen_rtx_REG (int ,int ) ;
 int gen_stack_tie (int ) ;

__attribute__((used)) static void
rs6000_emit_stack_tie (void)
{
  rtx mem = gen_frame_mem (BLKmode,
      gen_rtx_REG (Pmode, STACK_POINTER_REGNUM));

  emit_insn (gen_stack_tie (mem));
}
