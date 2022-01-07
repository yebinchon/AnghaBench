
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct asm_opcode {int tvalue; int avalue; int (* aencode ) () ;int (* tencode ) () ;int * avariant; int * tvariant; } ;
struct TYPE_2__ {int instruction; int cond; } ;


 int ARM_CPU_HAS_FEATURE (int ,int ) ;
 int BAD_FPU ;
 int _ (int ) ;
 int abort () ;
 int arm_ops_hsh ;
 int constraint (int,int ) ;
 int cpu_variant ;
 struct asm_opcode* hash_find (int ,char const*) ;
 TYPE_1__ inst ;
 int stub1 () ;
 int stub2 () ;
 scalar_t__ thumb_mode ;

__attribute__((used)) static void
do_vfp_nsyn_opcode (const char *opname)
{
  const struct asm_opcode *opcode;

  opcode = hash_find (arm_ops_hsh, opname);

  if (!opcode)
    abort ();

  constraint (!ARM_CPU_HAS_FEATURE (cpu_variant,
                thumb_mode ? *opcode->tvariant : *opcode->avariant),
              _(BAD_FPU));

  if (thumb_mode)
    {
      inst.instruction = opcode->tvalue;
      opcode->tencode ();
    }
  else
    {
      inst.instruction = (inst.cond << 28) | opcode->avalue;
      opcode->aencode ();
    }
}
