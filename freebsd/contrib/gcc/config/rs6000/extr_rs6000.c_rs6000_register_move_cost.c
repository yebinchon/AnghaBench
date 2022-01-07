
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ALTIVEC_REGS ;
 int CR_REGS ;
 int FLOAT_REGS ;
 int GENERAL_REGS ;
 int TFmode ;
 int** hard_regno_nregs ;
 scalar_t__ reg_classes_intersect_p (int,int) ;
 int rs6000_memory_move_cost (int,int,int ) ;

int
rs6000_register_move_cost (enum machine_mode mode,
      enum reg_class from, enum reg_class to)
{

  if (reg_classes_intersect_p (to, GENERAL_REGS)
      || reg_classes_intersect_p (from, GENERAL_REGS))
    {
      if (! reg_classes_intersect_p (to, GENERAL_REGS))
 from = to;

      if (from == FLOAT_REGS || from == ALTIVEC_REGS)
 return (rs6000_memory_move_cost (mode, from, 0)
  + rs6000_memory_move_cost (mode, GENERAL_REGS, 0));



      else if (from == CR_REGS)
 return 4;

      else

 return 2 * hard_regno_nregs[0][mode];
    }


  else if (reg_classes_intersect_p (to, from))
    return mode == TFmode ? 4 : 2;


  else
    return (rs6000_register_move_cost (mode, GENERAL_REGS, to)
     + rs6000_register_move_cost (mode, from, GENERAL_REGS));
}
