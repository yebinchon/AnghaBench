
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* machine; } ;
struct TYPE_5__ {scalar_t__ frame_size; } ;
struct TYPE_4__ {int split_branches_pending_p; void* base_reg; } ;
typedef scalar_t__ HOST_WIDE_INT ;


 int BASE_REGNUM ;
 int CONST_OK_FOR_K (scalar_t__) ;
 int DISP_IN_RANGE (scalar_t__) ;
 void* NULL_RTX ;
 int Pmode ;
 int TARGET_CPU_ZARCH ;
 TYPE_3__* cfun ;
 TYPE_2__ cfun_frame_layout ;
 scalar_t__ current_function_is_leaf ;
 scalar_t__ current_function_uses_const_pool ;
 void* gen_rtx_REG (int ,int) ;
 int * regs_ever_live ;
 int s390_frame_info () ;
 int s390_register_info (int*) ;

__attribute__((used)) static void
s390_init_frame_layout (void)
{
  HOST_WIDE_INT frame_size;
  int base_used;
  int clobbered_regs[16];





  if (!TARGET_CPU_ZARCH)
    cfun->machine->split_branches_pending_p = 1;

  do
    {
      frame_size = cfun_frame_layout.frame_size;


      base_used = cfun->machine->split_branches_pending_p
    || current_function_uses_const_pool
    || (!DISP_IN_RANGE (frame_size)
        && !CONST_OK_FOR_K (frame_size));




      if (!base_used)
 cfun->machine->base_reg = NULL_RTX;
      else if (current_function_is_leaf && !regs_ever_live[5])
 cfun->machine->base_reg = gen_rtx_REG (Pmode, 5);
      else
 cfun->machine->base_reg = gen_rtx_REG (Pmode, BASE_REGNUM);

      s390_register_info (clobbered_regs);
      s390_frame_info ();
    }
  while (frame_size != cfun_frame_layout.frame_size);
}
