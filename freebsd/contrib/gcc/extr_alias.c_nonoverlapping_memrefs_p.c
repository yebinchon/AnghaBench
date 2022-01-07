
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef scalar_t__ rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ COMPONENT_REF ;
 scalar_t__ CONSTANT_P (scalar_t__) ;
 scalar_t__ CONST_INT ;
 scalar_t__ DECL_FIELD_CONTEXT (scalar_t__) ;
 int DECL_P (scalar_t__) ;
 scalar_t__ DECL_RTL (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ INDIRECT_REF_P (scalar_t__) ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ MEM_EXPR (scalar_t__) ;
 scalar_t__ MEM_OFFSET (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 scalar_t__ MEM_SIZE (scalar_t__) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ PLUS ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 int REGNO (scalar_t__) ;
 scalar_t__ REGNO_PTR_FRAME_P (int ) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ adjust_offset_for_component_ref (scalar_t__,scalar_t__) ;
 scalar_t__ decl_for_component_ref (scalar_t__) ;
 int flag_argument_noalias ;
 scalar_t__ ipa_type_escape_field_does_not_clobber_p (scalar_t__,int ) ;
 scalar_t__ nonoverlapping_component_refs_p (scalar_t__,scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
nonoverlapping_memrefs_p (rtx x, rtx y)
{
  tree exprx = MEM_EXPR (x), expry = MEM_EXPR (y);
  rtx rtlx, rtly;
  rtx basex, basey;
  rtx moffsetx, moffsety;
  HOST_WIDE_INT offsetx = 0, offsety = 0, sizex, sizey, tem;


  if (exprx == 0 || expry == 0)
    return 0;


  if (TREE_CODE (exprx) == COMPONENT_REF
      && TREE_CODE (expry) == COMPONENT_REF
      && nonoverlapping_component_refs_p (exprx, expry))
    return 1;



  moffsetx = MEM_OFFSET (x);
  if (TREE_CODE (exprx) == COMPONENT_REF)
    {
      if (TREE_CODE (expry) == VAR_DECL
   && POINTER_TYPE_P (TREE_TYPE (expry)))
 {
  tree field = TREE_OPERAND (exprx, 1);
  tree fieldcontext = DECL_FIELD_CONTEXT (field);
  if (ipa_type_escape_field_does_not_clobber_p (fieldcontext,
             TREE_TYPE (field)))
    return 1;
 }
      {
 tree t = decl_for_component_ref (exprx);
 if (! t)
   return 0;
 moffsetx = adjust_offset_for_component_ref (exprx, moffsetx);
 exprx = t;
      }
    }
  else if (INDIRECT_REF_P (exprx))
    {
      exprx = TREE_OPERAND (exprx, 0);
      if (flag_argument_noalias < 2
   || TREE_CODE (exprx) != PARM_DECL)
 return 0;
    }

  moffsety = MEM_OFFSET (y);
  if (TREE_CODE (expry) == COMPONENT_REF)
    {
      if (TREE_CODE (exprx) == VAR_DECL
   && POINTER_TYPE_P (TREE_TYPE (exprx)))
 {
  tree field = TREE_OPERAND (expry, 1);
  tree fieldcontext = DECL_FIELD_CONTEXT (field);
  if (ipa_type_escape_field_does_not_clobber_p (fieldcontext,
             TREE_TYPE (field)))
    return 1;
 }
      {
 tree t = decl_for_component_ref (expry);
 if (! t)
   return 0;
 moffsety = adjust_offset_for_component_ref (expry, moffsety);
 expry = t;
      }
    }
  else if (INDIRECT_REF_P (expry))
    {
      expry = TREE_OPERAND (expry, 0);
      if (flag_argument_noalias < 2
   || TREE_CODE (expry) != PARM_DECL)
 return 0;
    }

  if (! DECL_P (exprx) || ! DECL_P (expry))
    return 0;

  rtlx = DECL_RTL (exprx);
  rtly = DECL_RTL (expry);




  if ((!MEM_P (rtlx) || !MEM_P (rtly))
      && ! rtx_equal_p (rtlx, rtly))
    return 1;





  basex = MEM_P (rtlx) ? XEXP (rtlx, 0) : rtlx;
  if (GET_CODE (basex) == PLUS && GET_CODE (XEXP (basex, 1)) == CONST_INT)
    offsetx = INTVAL (XEXP (basex, 1)), basex = XEXP (basex, 0);

  basey = MEM_P (rtly) ? XEXP (rtly, 0) : rtly;
  if (GET_CODE (basey) == PLUS && GET_CODE (XEXP (basey, 1)) == CONST_INT)
    offsety = INTVAL (XEXP (basey, 1)), basey = XEXP (basey, 0);





  if (! rtx_equal_p (basex, basey))
    return ((CONSTANT_P (basex) && CONSTANT_P (basey))
     || (CONSTANT_P (basex) && REG_P (basey)
  && REGNO_PTR_FRAME_P (REGNO (basey)))
     || (CONSTANT_P (basey) && REG_P (basex)
  && REGNO_PTR_FRAME_P (REGNO (basex))));

  sizex = (!MEM_P (rtlx) ? (int) GET_MODE_SIZE (GET_MODE (rtlx))
    : MEM_SIZE (rtlx) ? INTVAL (MEM_SIZE (rtlx))
    : -1);
  sizey = (!MEM_P (rtly) ? (int) GET_MODE_SIZE (GET_MODE (rtly))
    : MEM_SIZE (rtly) ? INTVAL (MEM_SIZE (rtly)) :
    -1);



  if (moffsetx)
    offsetx += INTVAL (moffsetx), sizex -= INTVAL (moffsetx);
  if (moffsety)
    offsety += INTVAL (moffsety), sizey -= INTVAL (moffsety);




  if (MEM_SIZE (x) && moffsetx)
    sizex = INTVAL (MEM_SIZE (x));
  if (MEM_SIZE (y) && moffsety)
    sizey = INTVAL (MEM_SIZE (y));


  if (offsetx > offsety)
    {
      tem = offsetx, offsetx = offsety, offsety = tem;
      tem = sizex, sizex = sizey, sizey = tem;
    }



  return sizex >= 0 && offsety >= offsetx + sizex;
}
