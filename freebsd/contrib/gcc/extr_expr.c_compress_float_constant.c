
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum insn_code { ____Placeholder_insn_code } insn_code ;
struct TYPE_4__ {TYPE_1__* operand; } ;
struct TYPE_3__ {int (* predicate ) (int ,int) ;} ;
typedef int REAL_VALUE_TYPE ;


 int CODE_FOR_nothing ;
 int CONST_DOUBLE_FROM_REAL_VALUE (int ,int) ;
 int GET_CLASS_NARROWEST_MODE (int ) ;
 int GET_MODE (int ) ;
 int GET_MODE_CLASS (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 scalar_t__ LEGITIMATE_CONSTANT_P (int ) ;
 int NULL_RTX ;
 int REAL_VALUE_FROM_CONST_DOUBLE (int ,int ) ;
 int REG_EQUAL ;
 scalar_t__ REG_P (int ) ;
 int SET ;
 int UNKNOWN ;
 int can_extend_p (int,int,int ) ;
 int emit_unop_insn (int,int ,int ,int ) ;
 int exact_real_truncate (int,int *) ;
 scalar_t__** float_extend_from_mem ;
 int force_const_mem (int,int ) ;
 int force_reg (int,int ) ;
 int gen_rtx_FLOAT_EXTEND (int,int ) ;
 int get_last_insn () ;
 TYPE_2__* insn_data ;
 int rtx_cost (int ,int ) ;
 int set_unique_reg_note (int ,int ,int ) ;
 int stub1 (int ,int) ;
 int validize_mem (int ) ;

__attribute__((used)) static rtx
compress_float_constant (rtx x, rtx y)
{
  enum machine_mode dstmode = GET_MODE (x);
  enum machine_mode orig_srcmode = GET_MODE (y);
  enum machine_mode srcmode;
  REAL_VALUE_TYPE r;
  int oldcost, newcost;

  REAL_VALUE_FROM_CONST_DOUBLE (r, y);

  if (LEGITIMATE_CONSTANT_P (y))
    oldcost = rtx_cost (y, SET);
  else
    oldcost = rtx_cost (force_const_mem (dstmode, y), SET);

  for (srcmode = GET_CLASS_NARROWEST_MODE (GET_MODE_CLASS (orig_srcmode));
       srcmode != orig_srcmode;
       srcmode = GET_MODE_WIDER_MODE (srcmode))
    {
      enum insn_code ic;
      rtx trunc_y, last_insn;


      ic = can_extend_p (dstmode, srcmode, 0);
      if (ic == CODE_FOR_nothing)
 continue;


      if (! exact_real_truncate (srcmode, &r))
 continue;

      trunc_y = CONST_DOUBLE_FROM_REAL_VALUE (r, srcmode);

      if (LEGITIMATE_CONSTANT_P (trunc_y))
 {


   if (! (*insn_data[ic].operand[1].predicate) (trunc_y, srcmode))
     continue;

   newcost = rtx_cost (gen_rtx_FLOAT_EXTEND (dstmode, trunc_y), SET);
   if (oldcost < newcost)
     continue;
 }
      else if (float_extend_from_mem[dstmode][srcmode])
 {
   trunc_y = force_const_mem (srcmode, trunc_y);

   newcost = rtx_cost (gen_rtx_FLOAT_EXTEND (dstmode, trunc_y), SET);
   if (oldcost < newcost)
     continue;
   trunc_y = validize_mem (trunc_y);
 }
      else
 continue;




      trunc_y = force_reg (srcmode, trunc_y);
      emit_unop_insn (ic, x, trunc_y, UNKNOWN);
      last_insn = get_last_insn ();

      if (REG_P (x))
 set_unique_reg_note (last_insn, REG_EQUAL, y);

      return last_insn;
    }

  return NULL_RTX;
}
