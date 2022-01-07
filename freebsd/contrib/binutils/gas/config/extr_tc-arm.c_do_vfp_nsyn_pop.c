
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ issingle; } ;


 int do_vfp_nsyn_opcode (char*) ;
 TYPE_2__ inst ;
 int nsyn_insert_sp () ;

__attribute__((used)) static void
do_vfp_nsyn_pop (void)
{
  nsyn_insert_sp ();
  if (inst.operands[1].issingle)
    do_vfp_nsyn_opcode ("fldmias");
  else
    do_vfp_nsyn_opcode ("fldmiad");
}
