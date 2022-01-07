
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int arch; int skip_zeroes; int insn_sets; int mach; int endian; int skip_zeroes_at_end; int disassembler_needs_relocs; int symbol_is_valid; } ;


 int BFD_ENDIAN_BIG ;
 int ISA_M16C ;
 int ISA_M32C ;
 int ISA_MAX ;
 int TRUE ;
 int arm_symbol_is_valid ;





 int bfd_mach_m16c ;
 int cgen_bitset_create (int ) ;
 int cgen_bitset_set (int ,int ) ;

void
disassemble_init_for_target (struct disassemble_info * info)
{
  if (info == ((void*)0))
    return;

  switch (info->arch)
    {
    default:
      break;
    }
}
