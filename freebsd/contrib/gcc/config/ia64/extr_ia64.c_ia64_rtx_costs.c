
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;







 int CONST_OK_FOR_I (int ) ;
 int CONST_OK_FOR_J (int ) ;
 int CONST_OK_FOR_K (int ) ;
 int CONST_OK_FOR_L (int ) ;
 int COSTS_N_INSNS (int) ;

 int GET_MODE (int ) ;
 int GET_MODE_SIZE (int ) ;
 int INTVAL (int ) ;
__attribute__((used)) static bool
ia64_rtx_costs (rtx x, int code, int outer_code, int *total)
{
  switch (code)
    {
    case 139:
      switch (outer_code)
        {
        case 131:
   *total = CONST_OK_FOR_J (INTVAL (x)) ? 0 : COSTS_N_INSNS (1);
   return 1;
        case 132:
   if (CONST_OK_FOR_I (INTVAL (x)))
     *total = 0;
   else if (CONST_OK_FOR_J (INTVAL (x)))
     *total = 1;
   else
     *total = COSTS_N_INSNS (1);
   return 1;
        default:
   if (CONST_OK_FOR_K (INTVAL (x)) || CONST_OK_FOR_L (INTVAL (x)))
     *total = 0;
   else
     *total = COSTS_N_INSNS (1);
   return 1;
 }

    case 140:
      *total = COSTS_N_INSNS (1);
      return 1;

    case 141:
    case 130:
    case 137:
      *total = COSTS_N_INSNS (3);
      return 1;

    case 133:





      if (GET_MODE_SIZE (GET_MODE (x)) > 2)
        *total = COSTS_N_INSNS (10);
      else
 *total = COSTS_N_INSNS (2);
      return 1;

    case 132:
    case 135:
    case 143:
    case 142:
    case 136:
      *total = COSTS_N_INSNS (1);
      return 1;

    case 138:
    case 129:
    case 134:
    case 128:


      *total = COSTS_N_INSNS (60);
      return 1;

    default:
      return 0;
    }
}
