
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int ra_needs_full_frame; int ra_need_lr; } ;


 scalar_t__ ABI_AIX ;
 scalar_t__ DEFAULT_ABI ;
 int LINK_REGISTER_REGNUM ;
 int Pmode ;
 int RETURN_ADDRESS_OFFSET ;
 TYPE_2__* cfun ;
 int copy_to_reg (int ) ;
 scalar_t__ flag_pic ;
 int gen_rtx_MEM (int ,int ) ;
 int get_hard_reg_initial_val (int ,int ) ;
 int memory_address (int ,int ) ;
 int plus_constant (int ,int ) ;

rtx
rs6000_return_addr (int count, rtx frame)
{



  if (count != 0 || (DEFAULT_ABI != ABI_AIX && flag_pic))
    {
      cfun->machine->ra_needs_full_frame = 1;

      return
 gen_rtx_MEM
   (Pmode,
    memory_address
    (Pmode,
     plus_constant (copy_to_reg
      (gen_rtx_MEM (Pmode,
      memory_address (Pmode, frame))),
      RETURN_ADDRESS_OFFSET)));
    }

  cfun->machine->ra_need_lr = 1;
  return get_hard_reg_initial_val (Pmode, LINK_REGISTER_REGNUM);
}
