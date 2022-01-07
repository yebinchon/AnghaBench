
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {scalar_t__ a; scalar_t__ b; scalar_t__ x; scalar_t__ cond_earliest; scalar_t__ cond; int insn_a; int jump; } ;
typedef scalar_t__ rtx ;


 scalar_t__ CONST0_RTX (int ) ;
 scalar_t__ CONSTANT_POOL_ADDRESS_P (scalar_t__) ;
 int FALSE ;

 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;

 int INSN_LOCATOR (int ) ;


 scalar_t__ MEM_P (scalar_t__) ;
 int NEG ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ SET_DEST (scalar_t__) ;
 scalar_t__ SET_SRC (scalar_t__) ;
 int SYMBOL_REF ;
 int TRUE ;




 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ const1_rtx ;
 scalar_t__ constm1_rtx ;
 int emit_insn_before_setloc (scalar_t__,int ,int ) ;
 scalar_t__ end_ifcvt_sequence (struct noce_if_info*) ;
 int end_sequence () ;
 scalar_t__ expand_abs_nojump (int ,scalar_t__,scalar_t__,int) ;
 scalar_t__ expand_simple_unop (int ,int,scalar_t__,scalar_t__,int ) ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 scalar_t__ get_pool_constant (scalar_t__) ;
 scalar_t__ no_new_pseudos ;
 int noce_emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ noce_get_alt_condition (struct noce_if_info*,scalar_t__,scalar_t__*) ;
 scalar_t__ prev_nonnote_insn (scalar_t__) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;
 int start_sequence () ;

__attribute__((used)) static int
noce_try_abs (struct noce_if_info *if_info)
{
  rtx cond, earliest, target, seq, a, b, c;
  int negate;


  if (no_new_pseudos)
    return FALSE;




  a = if_info->a;
  b = if_info->b;
  if (GET_CODE (a) == NEG && rtx_equal_p (XEXP (a, 0), b))
    negate = 0;
  else if (GET_CODE (b) == NEG && rtx_equal_p (XEXP (b, 0), a))
    {
      c = a; a = b; b = c;
      negate = 1;
    }
  else
    return FALSE;

  cond = noce_get_alt_condition (if_info, b, &earliest);
  if (!cond)
    return FALSE;


  if (rtx_equal_p (XEXP (cond, 0), b))
    c = XEXP (cond, 1);
  else if (rtx_equal_p (XEXP (cond, 1), b))
    {
      c = XEXP (cond, 0);
      negate = !negate;
    }
  else
    return FALSE;



  if (REG_P (c))
    {
      rtx set, insn = prev_nonnote_insn (earliest);
      if (insn
   && (set = single_set (insn))
   && rtx_equal_p (SET_DEST (set), c))
 {
   rtx note = find_reg_equal_equiv_note (insn);
   if (note)
     c = XEXP (note, 0);
   else
     c = SET_SRC (set);
 }
      else
 return FALSE;
    }
  if (MEM_P (c)
      && GET_CODE (XEXP (c, 0)) == SYMBOL_REF
      && CONSTANT_POOL_ADDRESS_P (XEXP (c, 0)))
    c = get_pool_constant (XEXP (c, 0));




  if (c == constm1_rtx && GET_CODE (cond) == 134)
    ;
  else if (c == const1_rtx && GET_CODE (cond) == 132)
    ;
  else if (c != CONST0_RTX (GET_MODE (b)))
    return FALSE;


  switch (GET_CODE (cond))
    {
    case 132:
    case 133:
    case 128:
    case 129:
      negate = !negate;
      break;
    case 134:
    case 135:
    case 130:
    case 131:
      break;
    default:
      return FALSE;
    }

  start_sequence ();

  target = expand_abs_nojump (GET_MODE (if_info->x), b, if_info->x, 1);



  if (target && negate)
    target = expand_simple_unop (GET_MODE (target), NEG, target, if_info->x, 0);

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
