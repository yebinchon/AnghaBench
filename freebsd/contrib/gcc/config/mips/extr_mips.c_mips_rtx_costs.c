
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int fp_add; int fp_mult_sf; int fp_mult_df; int int_mult_si; int int_mult_di; int fp_div_sf; int fp_div_df; int int_div_di; int int_div_si; } ;







 int CONSTANT_POOL_COST ;


 int COSTS_N_INSNS (int) ;
 int DFmode ;

 int DImode ;
 int EQ ;




 int FLOAT_MODE_P (int) ;

 int GE ;
 int const GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GEU ;
 int GT ;
 int GTU ;
 int INTVAL (int ) ;


 int LE ;
 int LEGITIMATE_CONSTANT_P (int ) ;
 int LEU ;


 int LT ;
 int LTU ;




 int NE ;



 int SET ;
 int SFmode ;

 int SImode ;


 int TARGET_64BIT ;
 int TARGET_MIPS16 ;



 int XEXP (int ,int) ;


 int mips_address_insns (int ,int) ;
 TYPE_1__* mips_cost ;

__attribute__((used)) static bool
mips_rtx_costs (rtx x, int code, int outer_code, int *total)
{
  enum machine_mode mode = GET_MODE (x);
  bool float_mode_p = FLOAT_MODE_P (mode);

  switch (code)
    {
    case 153:
      if (TARGET_MIPS16)
        {


   if ((outer_code) == 157 || (outer_code) == 156
       || (outer_code) == 143)
     {
       if (INTVAL (x) >= 1 && INTVAL (x) <= 8)
  *total = 0;
       else
  *total = COSTS_N_INSNS (1);
       return 1;
     }


   if ((outer_code) == 129
       && INTVAL (x) >= 0 && INTVAL (x) < 0x10000)
     {
       *total = 0;
       return 1;
     }




   if (((outer_code) == LT || (outer_code) == LE
        || (outer_code) == GE || (outer_code) == GT
        || (outer_code) == LTU || (outer_code) == LEU
        || (outer_code) == GEU || (outer_code) == GTU)
       && INTVAL (x) >= -0x8000 && INTVAL (x) < 0x8000)
     {
       *total = 0;
       return 1;
     }


   if (((outer_code) == EQ || (outer_code) == NE)
       && INTVAL (x) == 0)
     {
       *total = 0;
       return 1;
     }
   if (outer_code == SET
       && INTVAL (x) >= 0
       && INTVAL (x) < 256)
     {
       *total = 0;
       return 1;
     }
 }
      else
 {

   *total = 0;
   return 1;
 }




    case 155:
    case 133:
    case 145:
    case 154:
      if (LEGITIMATE_CONSTANT_P (x))
 {
   *total = COSTS_N_INSNS (1);
   return 1;
 }
      else
 {

   *total = CONSTANT_POOL_COST;
   return 1;
 }

    case 142:
      {


 int n = mips_address_insns (XEXP (x, 0), GET_MODE (x));
 if (n > 0)
   {
     *total = COSTS_N_INSNS (n + 1);
     return 1;
   }
 return 0;
      }

    case 151:
      *total = COSTS_N_INSNS (6);
      return 1;

    case 137:
      *total = COSTS_N_INSNS ((mode == DImode && !TARGET_64BIT) ? 2 : 1);
      return 1;

    case 158:
    case 146:
    case 129:
      if (mode == DImode && !TARGET_64BIT)
        {
          *total = COSTS_N_INSNS (2);
          return 1;
        }
      return 0;

    case 157:
    case 156:
    case 143:
      if (mode == DImode && !TARGET_64BIT)
        {
          *total = COSTS_N_INSNS ((GET_CODE (XEXP (x, 1)) == 153)
                                  ? 4 : 12);
          return 1;
        }
      return 0;

    case 159:
      if (float_mode_p)
        *total = COSTS_N_INSNS (1);
      else
        *total = COSTS_N_INSNS (4);
      return 1;

    case 144:
      *total = COSTS_N_INSNS (1);
      return 1;

    case 136:
    case 141:
      if (float_mode_p)
 {
   *total = mips_cost->fp_add;
   return 1;
 }

      else if (mode == DImode && !TARGET_64BIT)
        {
          *total = COSTS_N_INSNS (4);
          return 1;
        }
      return 0;

    case 138:
      if (mode == DImode && !TARGET_64BIT)
        {
          *total = COSTS_N_INSNS (4);
          return 1;
        }
      return 0;

    case 139:
      if (mode == SFmode)
 *total = mips_cost->fp_mult_sf;

      else if (mode == DFmode)
 *total = mips_cost->fp_mult_df;

      else if (mode == SImode)
 *total = mips_cost->int_mult_si;

      else
 *total = mips_cost->int_mult_di;

      return 1;

    case 152:
    case 140:
      if (float_mode_p)
 {
   if (mode == SFmode)
     *total = mips_cost->fp_div_sf;
   else
     *total = mips_cost->fp_div_df;

   return 1;
 }


    case 132:
    case 131:
      if (mode == DImode)
        *total = mips_cost->int_div_di;
      else
 *total = mips_cost->int_div_si;

      return 1;

    case 135:



      if (TARGET_64BIT && mode == DImode
          && GET_MODE (XEXP (x, 0)) == SImode)
        *total = COSTS_N_INSNS (1);
      else
        *total = COSTS_N_INSNS (2);
      return 1;

    case 128:
      if (TARGET_64BIT && mode == DImode
          && GET_MODE (XEXP (x, 0)) == SImode)
        *total = COSTS_N_INSNS (2);
      else
        *total = COSTS_N_INSNS (1);
      return 1;

    case 149:
    case 130:
    case 150:
    case 148:
    case 147:
    case 134:
      *total = mips_cost->fp_add;
      return 1;

    default:
      return 0;
    }
}
