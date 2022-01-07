
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int extra_cost; struct TYPE_5__* prev_sri; } ;
typedef TYPE_1__ secondary_reload_info ;
typedef int rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {int (* secondary_reload ) (int,int ,int,int,TYPE_1__*) ;} ;


 int COSTS_N_INSNS (int) ;
 scalar_t__ GET_CODE (int ) ;
 int MEMORY_MOVE_COST (int,int,int) ;
 scalar_t__ MEM_P (int ) ;
 int NO_REGS ;
 int PREFERRED_RELOAD_CLASS (int ,int) ;
 int REGNO (int ) ;
 scalar_t__ REGNO_REG_CLASS (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SCRATCH ;
 int*** move_cost ;
 int stub1 (int,int ,int,int,TYPE_1__*) ;
 TYPE_2__ targetm ;

__attribute__((used)) static int
copy_cost (rtx x, enum machine_mode mode, enum reg_class class, int to_p,
    secondary_reload_info *prev_sri)
{
  enum reg_class secondary_class = NO_REGS;
  secondary_reload_info sri;




  if (GET_CODE (x) == SCRATCH)
    return 0;


  class = PREFERRED_RELOAD_CLASS (x, class);





  sri.prev_sri = prev_sri;
  sri.extra_cost = 0;
  secondary_class = targetm.secondary_reload (to_p, x, class, mode, &sri);

  if (secondary_class != NO_REGS)
    return (move_cost[mode][(int) secondary_class][(int) class]
     + sri.extra_cost
     + copy_cost (x, mode, secondary_class, to_p, &sri));





  if (MEM_P (x) || class == NO_REGS)
    return sri.extra_cost + MEMORY_MOVE_COST (mode, class, to_p);

  else if (REG_P (x))
    return (sri.extra_cost
     + move_cost[mode][(int) REGNO_REG_CLASS (REGNO (x))][(int) class]);

  else

    return sri.extra_cost + COSTS_N_INSNS (1);
}
