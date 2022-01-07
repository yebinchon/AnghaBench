
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct disassemble_info {int dummy; } ;
typedef int CORE_ADDR ;


 int TARGET_PRINT_INSN (int ,struct disassemble_info*) ;
 int current_gdbarch ;
 struct disassemble_info gdb_disassemble_info (int ,struct ui_file*) ;

int
gdb_print_insn (CORE_ADDR memaddr, struct ui_file *stream)
{
  struct disassemble_info di = gdb_disassemble_info (current_gdbarch, stream);
  return TARGET_PRINT_INSN (memaddr, &di);
}
