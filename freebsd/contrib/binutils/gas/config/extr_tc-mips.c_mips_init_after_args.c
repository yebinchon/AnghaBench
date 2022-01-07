
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_opcode {int dummy; } ;


 int bfd_mips_num_builtin_opcodes ;
 int bfd_mips_num_opcodes ;
 scalar_t__ mips_builtin_opcodes ;
 struct mips_opcode* mips_opcodes ;

void
mips_init_after_args (void)
{

  bfd_mips_num_opcodes = bfd_mips_num_builtin_opcodes;
  mips_opcodes = (struct mips_opcode *) mips_builtin_opcodes;
}
