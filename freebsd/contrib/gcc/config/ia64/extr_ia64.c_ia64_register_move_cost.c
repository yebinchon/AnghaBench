
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ADDL_REGS ;
 int MEMORY_MOVE_COST (int,int,int ) ;

 int RFmode ;
 int XFmode ;
 int gcc_unreachable () ;

int
ia64_register_move_cost (enum machine_mode mode, enum reg_class from,
    enum reg_class to)
{

  if (to == ADDL_REGS)
    to = 129;
  if (from == ADDL_REGS)
    from = 129;



  if (from < to)
    {
      enum reg_class tmp = to;
      to = from, from = tmp;
    }





  if (mode == XFmode || mode == RFmode)
    {
      if (to != 129 || from != 129)
        return MEMORY_MOVE_COST (mode, to, 0);
      else
 return 3;
    }

  switch (to)
    {
    case 128:

      if (from == 128)
 return 3;

      if (from != 129)
 return MEMORY_MOVE_COST (mode, to, 0);
      break;

    case 134:

      if (from != 129 && from != 131)
 return MEMORY_MOVE_COST (mode, to, 0);
      break;

    case 136:
    case 135:

      if (from != 129)
 return MEMORY_MOVE_COST (mode, to, 0);
      break;

    case 129:
    case 132:
    case 133:
    case 130:
    case 131:
    case 137:
      break;

    default:
      gcc_unreachable ();
    }

  return 2;
}
