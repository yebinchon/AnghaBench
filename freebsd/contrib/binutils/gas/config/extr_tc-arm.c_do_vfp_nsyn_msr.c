
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* operands; } ;
struct TYPE_3__ {scalar_t__ isvec; } ;


 int FAIL ;
 int SUCCESS ;
 int do_vfp_nsyn_opcode (char*) ;
 TYPE_2__ inst ;

__attribute__((used)) static int
do_vfp_nsyn_msr (void)
{
  if (inst.operands[0].isvec)
    do_vfp_nsyn_opcode ("fmxr");
  else
    return FAIL;

  return SUCCESS;
}
