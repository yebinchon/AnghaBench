
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ base_reg; } ;


 size_t BASE_REGNUM ;
 size_t REGNO (scalar_t__) ;
 size_t RETURN_REGNUM ;
 size_t STACK_POINTER_REGNUM ;
 TYPE_2__* cfun ;
 int* regs_ever_live ;
 int s390_register_info (int*) ;

__attribute__((used)) static void
s390_update_frame_layout (void)
{
  int clobbered_regs[16];

  s390_register_info (clobbered_regs);

  regs_ever_live[BASE_REGNUM] = clobbered_regs[BASE_REGNUM];
  regs_ever_live[RETURN_REGNUM] = clobbered_regs[RETURN_REGNUM];
  regs_ever_live[STACK_POINTER_REGNUM] = clobbered_regs[STACK_POINTER_REGNUM];

  if (cfun->machine->base_reg)
    regs_ever_live[REGNO (cfun->machine->base_reg)] = 1;
}
