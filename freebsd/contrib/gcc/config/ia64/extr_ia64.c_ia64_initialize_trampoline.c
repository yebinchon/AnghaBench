
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_3__ {int (* globalize_label ) (int ,char*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 int GEN_INT (int) ;
 int Pmode ;
 int TARGET_GNU_AS ;
 int asm_out_file ;
 int convert_memory_address (int ,int ) ;
 int copy_to_reg (int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_adddi3 (int ,int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_SYMBOL_REF (int ,char*) ;
 int plus_constant (int ,int) ;
 int stub1 (int ,char*) ;
 TYPE_2__ targetm ;

void
ia64_initialize_trampoline (rtx addr, rtx fnaddr, rtx static_chain)
{
  rtx addr_reg, eight = GEN_INT (8);



  if (!TARGET_GNU_AS)
    {
      static bool declared_ia64_trampoline = 0;

      if (!declared_ia64_trampoline)
 {
   declared_ia64_trampoline = 1;
   (*targetm.asm_out.globalize_label) (asm_out_file,
           "__ia64_trampoline");
 }
    }


  addr = convert_memory_address (Pmode, addr);
  fnaddr = convert_memory_address (Pmode, fnaddr);
  static_chain = convert_memory_address (Pmode, static_chain);


  addr_reg = gen_reg_rtx (Pmode);
  emit_move_insn (addr_reg, addr);



  emit_move_insn (gen_rtx_MEM (Pmode, addr_reg),
    gen_rtx_SYMBOL_REF (Pmode, "__ia64_trampoline"));
  emit_insn (gen_adddi3 (addr_reg, addr_reg, eight));

  emit_move_insn (gen_rtx_MEM (Pmode, addr_reg),
    copy_to_reg (plus_constant (addr, 16)));
  emit_insn (gen_adddi3 (addr_reg, addr_reg, eight));


  emit_move_insn (gen_rtx_MEM (Pmode, addr_reg), fnaddr);
  emit_insn (gen_adddi3 (addr_reg, addr_reg, eight));


  emit_move_insn (gen_rtx_MEM (Pmode, addr_reg), static_chain);
}
