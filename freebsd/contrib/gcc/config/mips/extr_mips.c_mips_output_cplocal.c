
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ global_pointer; } ;


 scalar_t__ GLOBAL_POINTER_REGNUM ;
 int TARGET_EXPLICIT_RELOCS ;
 TYPE_2__* cfun ;
 int output_asm_insn (char*,int ) ;

__attribute__((used)) static void
mips_output_cplocal (void)
{
  if (!TARGET_EXPLICIT_RELOCS
      && cfun->machine->global_pointer > 0
      && cfun->machine->global_pointer != GLOBAL_POINTER_REGNUM)
    output_asm_insn (".cplocal %+", 0);
}
