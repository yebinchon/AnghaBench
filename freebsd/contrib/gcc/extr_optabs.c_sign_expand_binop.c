
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct optab {TYPE_1__* handlers; } ;
typedef scalar_t__ rtx ;
typedef struct optab* optab ;
typedef enum optab_methods { ____Placeholder_optab_methods } optab_methods ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {scalar_t__ libfunc; int insn_code; } ;


 int CODE_FOR_nothing ;
 int OPTAB_DIRECT ;
 int OPTAB_LIB ;
 int OPTAB_WIDEN ;
 scalar_t__ expand_binop (int,struct optab*,scalar_t__,scalar_t__,scalar_t__,int,int) ;

rtx
sign_expand_binop (enum machine_mode mode, optab uoptab, optab soptab,
     rtx op0, rtx op1, rtx target, int unsignedp,
     enum optab_methods methods)
{
  rtx temp;
  optab direct_optab = unsignedp ? uoptab : soptab;
  struct optab wide_soptab;


  temp = expand_binop (mode, direct_optab, op0, op1, target,
         unsignedp, OPTAB_DIRECT);
  if (temp || methods == OPTAB_DIRECT)
    return temp;



  wide_soptab = *soptab;
  wide_soptab.handlers[(int) mode].insn_code = CODE_FOR_nothing;
  wide_soptab.handlers[(int) mode].libfunc = 0;

  temp = expand_binop (mode, &wide_soptab, op0, op1, target,
         unsignedp, OPTAB_WIDEN);


  if (temp == 0 && unsignedp)
    temp = expand_binop (mode, uoptab, op0, op1, target,
    unsignedp, OPTAB_WIDEN);
  if (temp || methods == OPTAB_WIDEN)
    return temp;


  temp = expand_binop (mode, direct_optab, op0, op1, target, unsignedp, OPTAB_LIB);
  if (temp || methods == OPTAB_LIB)
    return temp;


  temp = expand_binop (mode, &wide_soptab, op0, op1, target,
         unsignedp, methods);
  if (temp != 0)
    return temp;
  if (unsignedp)
    return expand_binop (mode, uoptab, op0, op1, target,
    unsignedp, methods);
  return 0;
}
