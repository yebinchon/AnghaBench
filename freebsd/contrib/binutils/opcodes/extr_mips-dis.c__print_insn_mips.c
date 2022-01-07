
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct disassemble_info {scalar_t__ mach; scalar_t__ flavour; int (* read_memory_func ) (int,int *,int,struct disassemble_info*) ;int (* memory_error_func ) (int,int,struct disassemble_info*) ;int * symbols; int disassembler_options; } ;
typedef enum bfd_endian { ____Placeholder_bfd_endian } bfd_endian ;
struct TYPE_3__ {scalar_t__ st_other; } ;
struct TYPE_4__ {TYPE_1__ internal_elf_sym; } ;
typedef TYPE_2__ elf_symbol_type ;
typedef int bfd_vma ;
typedef int bfd_byte ;


 int BFD_ENDIAN_BIG ;
 int INSNLEN ;
 scalar_t__ STO_MIPS16 ;
 scalar_t__ bfd_getb32 (int *) ;
 scalar_t__ bfd_getl32 (int *) ;
 scalar_t__ bfd_mach_mips16 ;
 scalar_t__ bfd_target_elf_flavour ;
 int parse_mips_dis_options (int ) ;
 int print_insn_mips (int,unsigned long,struct disassemble_info*) ;
 int print_insn_mips16 (int,struct disassemble_info*) ;
 int set_default_mips_dis_options (struct disassemble_info*) ;
 int stub1 (int,int *,int,struct disassemble_info*) ;
 int stub2 (int,int,struct disassemble_info*) ;

__attribute__((used)) static int
_print_insn_mips (bfd_vma memaddr,
    struct disassemble_info *info,
    enum bfd_endian endianness)
{
  bfd_byte buffer[INSNLEN];
  int status;

  set_default_mips_dis_options (info);
  parse_mips_dis_options (info->disassembler_options);




  if (memaddr & 0x01)
    return print_insn_mips16 (memaddr, info);
  status = (*info->read_memory_func) (memaddr, buffer, INSNLEN, info);
  if (status == 0)
    {
      unsigned long insn;

      if (endianness == BFD_ENDIAN_BIG)
 insn = (unsigned long) bfd_getb32 (buffer);
      else
 insn = (unsigned long) bfd_getl32 (buffer);

      return print_insn_mips (memaddr, insn, info);
    }
  else
    {
      (*info->memory_error_func) (status, memaddr, info);
      return -1;
    }
}
