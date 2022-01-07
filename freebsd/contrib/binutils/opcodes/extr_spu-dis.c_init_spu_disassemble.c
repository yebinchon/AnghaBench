
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opcode; } ;


 int abort () ;
 TYPE_1__** spu_disassemble_table ;
 int spu_num_opcodes ;
 TYPE_1__* spu_opcodes ;

__attribute__((used)) static void
init_spu_disassemble (void)
{
  int i;



  for (i = 0; i < spu_num_opcodes; i++)
    {
      int o = spu_opcodes[i].opcode;
      if (o >= (1 << 11))
 abort ();
      if (spu_disassemble_table[o] == 0)
 spu_disassemble_table[o] = &spu_opcodes[i];
    }
}
