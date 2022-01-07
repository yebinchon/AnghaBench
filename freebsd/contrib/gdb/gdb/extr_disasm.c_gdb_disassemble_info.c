
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct gdbarch {int dummy; } ;
struct disassemble_info {int endian; int mach; int arch; int read_memory_func; int print_address_func; int memory_error_func; int flavour; } ;
struct TYPE_2__ {int mach; int arch; } ;


 int bfd_target_unknown_flavour ;
 int dis_asm_memory_error ;
 int dis_asm_print_address ;
 int dis_asm_read_memory ;
 int fprintf_disasm ;
 TYPE_1__* gdbarch_bfd_arch_info (struct gdbarch*) ;
 int gdbarch_byte_order (struct gdbarch*) ;
 int init_disassemble_info (struct disassemble_info*,struct ui_file*,int ) ;

__attribute__((used)) static struct disassemble_info
gdb_disassemble_info (struct gdbarch *gdbarch, struct ui_file *file)
{
  struct disassemble_info di;
  init_disassemble_info (&di, file, fprintf_disasm);
  di.flavour = bfd_target_unknown_flavour;
  di.memory_error_func = dis_asm_memory_error;
  di.print_address_func = dis_asm_print_address;
  di.read_memory_func = dis_asm_read_memory;
  di.arch = gdbarch_bfd_arch_info (gdbarch)->arch;
  di.mach = gdbarch_bfd_arch_info (gdbarch)->mach;
  di.endian = gdbarch_byte_order (gdbarch);
  return di;
}
