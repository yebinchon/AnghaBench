
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct costs {int mem_cost; int* cost; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;




 int CONSTANT_P (int ) ;
 int CONST_DOUBLE ;

 size_t FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int INDEX_REG_CLASS ;

 int MAX_REGS_PER_ADDRESS ;
 int MEMORY_MOVE_COST (size_t,int,int) ;
 int MULT ;
 int N_REG_CLASSES ;
 size_t Pmode ;

 size_t REGNO (int ) ;
 int REG_P (int ) ;
 int REG_POINTER (int ) ;
 int SCRATCH ;
 int SUBREG ;
 int SUBREG_REG (int ) ;

 int VOIDmode ;
 int XEXP (int ,int) ;
 int base_reg_class (int,int const,int) ;
 struct costs* costs ;
 int* in_inc_dec ;
 int*** may_move_in_cost ;
 int ok_for_base_p_nonstrict (int ,int,int const,int) ;
 int ok_for_index_p_nonstrict (int ) ;

__attribute__((used)) static void
record_address_regs (enum machine_mode mode, rtx x, int context,
       enum rtx_code outer_code, enum rtx_code index_code,
       int scale)
{
  enum rtx_code code = GET_CODE (x);
  enum reg_class class;

  if (context == 1)
    class = INDEX_REG_CLASS;
  else
    class = base_reg_class (mode, outer_code, index_code);

  switch (code)
    {
    case 139:
    case 140:
    case 141:
    case 137:
    case 128:
    case 138:
      return;

    case 136:
      {
 rtx arg0 = XEXP (x, 0);
 rtx arg1 = XEXP (x, 1);
 enum rtx_code code0 = GET_CODE (arg0);
 enum rtx_code code1 = GET_CODE (arg1);


 if (code0 == SUBREG)
   arg0 = SUBREG_REG (arg0), code0 = GET_CODE (arg0);
 if (code1 == SUBREG)
   arg1 = SUBREG_REG (arg1), code1 = GET_CODE (arg1);




 if (MAX_REGS_PER_ADDRESS == 1)
   record_address_regs (mode, arg0, 0, 136, code1, scale);






 else if (INDEX_REG_CLASS == base_reg_class (VOIDmode, 136, SCRATCH))
   {
     record_address_regs (mode, arg0, context, 136, code1, scale);
     if (! CONSTANT_P (arg1))
       record_address_regs (mode, arg1, context, 136, code0, scale);
   }




 else if (code1 == 139 || code1 == CONST_DOUBLE)
   record_address_regs (mode, arg0, context, 136, code1, scale);




 else if (code1 == 128 || code1 == 140 || code1 == 138)
   record_address_regs (mode, arg0, 1, 136, code1, scale);





 else if (code0 == 129 && code1 == 129
   && REGNO (arg0) < FIRST_PSEUDO_REGISTER
   && (ok_for_base_p_nonstrict (arg0, mode, 136, 129)
       || ok_for_index_p_nonstrict (arg0)))
   record_address_regs (mode, arg1,
          ok_for_base_p_nonstrict (arg0, mode, 136, 129)
          ? 1 : 0,
          136, 129, scale);
 else if (code0 == 129 && code1 == 129
   && REGNO (arg1) < FIRST_PSEUDO_REGISTER
   && (ok_for_base_p_nonstrict (arg1, mode, 136, 129)
       || ok_for_index_p_nonstrict (arg1)))
   record_address_regs (mode, arg0,
          ok_for_base_p_nonstrict (arg1, mode, 136, 129)
          ? 1 : 0,
          136, 129, scale);





 else if ((code0 == 129 && REG_POINTER (arg0))
   || code1 == MULT)
   {
     record_address_regs (mode, arg0, 0, 136, code1, scale);
     record_address_regs (mode, arg1, 1, 136, code0, scale);
   }
 else if ((code1 == 129 && REG_POINTER (arg1))
   || code0 == MULT)
   {
     record_address_regs (mode, arg0, 1, 136, code1, scale);
     record_address_regs (mode, arg1, 0, 136, code0, scale);
   }




 else
   {
     record_address_regs (mode, arg0, 0, 136, code1, scale / 2);
     record_address_regs (mode, arg0, 1, 136, code1, scale / 2);
     record_address_regs (mode, arg1, 0, 136, code0, scale / 2);
     record_address_regs (mode, arg1, 1, 136, code0, scale / 2);
   }
      }
      break;




    case 133:
    case 130:
      record_address_regs (mode, XEXP (x, 0), 0, code,
      GET_CODE (XEXP (XEXP (x, 1), 1)), 2 * scale);
      if (REG_P (XEXP (XEXP (x, 1), 1)))
 record_address_regs (mode, XEXP (XEXP (x, 1), 1), 1, code, 129,
        2 * scale);
      break;

    case 134:
    case 131:
    case 135:
    case 132:
      record_address_regs (mode, XEXP (x, 0), 0, code, SCRATCH, 2 * scale);
      break;

    case 129:
      {
 struct costs *pp = &costs[REGNO (x)];
 int i;

 pp->mem_cost += (MEMORY_MOVE_COST (Pmode, class, 1) * scale) / 2;

 for (i = 0; i < N_REG_CLASSES; i++)
   pp->cost[i] += (may_move_in_cost[Pmode][i][(int) class] * scale) / 2;
      }
      break;

    default:
      {
 const char *fmt = GET_RTX_FORMAT (code);
 int i;
 for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
   if (fmt[i] == 'e')
     record_address_regs (mode, XEXP (x, i), context, code, SCRATCH,
     scale);
      }
    }
}
