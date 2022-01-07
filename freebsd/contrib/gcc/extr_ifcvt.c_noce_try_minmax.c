
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {void* x; void* cond_earliest; void* cond; int insn_a; int jump; int b; int a; } ;
typedef void* rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int FALSE ;

 int GET_CODE (void*) ;
 int GET_MODE (void*) ;



 scalar_t__ HONOR_NANS (int ) ;
 scalar_t__ HONOR_SIGNED_ZEROS (int ) ;
 int INSN_LOCATOR (int ) ;




 int OPTAB_WIDEN ;
 int SMAX ;
 int SMIN ;
 int TRUE ;
 int UMAX ;
 int UMIN ;




 int XEXP (void*,int) ;
 int emit_insn_before_setloc (void*,int ,int ) ;
 void* end_ifcvt_sequence (struct noce_if_info*) ;
 int end_sequence () ;
 void* expand_simple_binop (int ,int,int ,int ,void*,int,int ) ;
 scalar_t__ no_new_pseudos ;
 int noce_emit_move_insn (void*,void*) ;
 void* noce_get_alt_condition (struct noce_if_info*,int ,void**) ;
 scalar_t__ rtx_equal_p (int ,int ) ;
 int start_sequence () ;
 int swap_condition (int) ;

__attribute__((used)) static int
noce_try_minmax (struct noce_if_info *if_info)
{
  rtx cond, earliest, target, seq;
  enum rtx_code code, op;
  int unsignedp;


  if (no_new_pseudos)
    return FALSE;




  if (HONOR_SIGNED_ZEROS (GET_MODE (if_info->x))
      || HONOR_NANS (GET_MODE (if_info->x)))
    return FALSE;

  cond = noce_get_alt_condition (if_info, if_info->a, &earliest);
  if (!cond)
    return FALSE;



  code = GET_CODE (cond);
  if (rtx_equal_p (XEXP (cond, 0), if_info->a))
    {
      if (! rtx_equal_p (XEXP (cond, 1), if_info->b))
 return FALSE;
    }
  else if (rtx_equal_p (XEXP (cond, 1), if_info->a))
    {
      if (! rtx_equal_p (XEXP (cond, 0), if_info->b))
 return FALSE;
      code = swap_condition (code);
    }
  else
    return FALSE;



  switch (code)
    {
    case 133:
    case 135:
    case 128:
    case 129:
      op = SMAX;
      unsignedp = 0;
      break;
    case 137:
    case 139:
    case 130:
    case 131:
      op = SMIN;
      unsignedp = 0;
      break;
    case 132:
    case 134:
      op = UMAX;
      unsignedp = 1;
      break;
    case 136:
    case 138:
      op = UMIN;
      unsignedp = 1;
      break;
    default:
      return FALSE;
    }

  start_sequence ();

  target = expand_simple_binop (GET_MODE (if_info->x), op,
    if_info->a, if_info->b,
    if_info->x, unsignedp, OPTAB_WIDEN);
  if (! target)
    {
      end_sequence ();
      return FALSE;
    }
  if (target != if_info->x)
    noce_emit_move_insn (if_info->x, target);

  seq = end_ifcvt_sequence (if_info);
  if (!seq)
    return FALSE;

  emit_insn_before_setloc (seq, if_info->jump, INSN_LOCATOR (if_info->insn_a));
  if_info->cond = cond;
  if_info->cond_earliest = earliest;

  return TRUE;
}
