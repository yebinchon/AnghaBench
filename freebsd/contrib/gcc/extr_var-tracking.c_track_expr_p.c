
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ BLKmode ;
 scalar_t__ DECL_DEBUG_EXPR (scalar_t__) ;
 scalar_t__ DECL_DEBUG_EXPR_IS_FROM (scalar_t__) ;
 scalar_t__ DECL_IGNORED_P (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 int DECL_P (scalar_t__) ;
 int DECL_RTL_IF_SET (scalar_t__) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ INTVAL (scalar_t__) ;
 scalar_t__ MAX_VAR_PARTS ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ MEM_SIZE (int ) ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_STATIC (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ VAR_DECL ;
 int XEXP (int ,int ) ;
 scalar_t__ contains_symbol_ref (int ) ;

__attribute__((used)) static bool
track_expr_p (tree expr)
{
  rtx decl_rtl;
  tree realdecl;


  if (TREE_CODE (expr) != VAR_DECL && TREE_CODE (expr) != PARM_DECL)
    return 0;


  if (!DECL_NAME (expr))
    return 0;


  decl_rtl = DECL_RTL_IF_SET (expr);
  if (!decl_rtl)
    return 0;




  realdecl = expr;
  if (DECL_DEBUG_EXPR_IS_FROM (realdecl) && DECL_DEBUG_EXPR (realdecl))
    {
      realdecl = DECL_DEBUG_EXPR (realdecl);


      if (!DECL_P (realdecl))
 return 0;
    }



  if (DECL_IGNORED_P (realdecl))
    return 0;



  if (TREE_STATIC (realdecl))
    return 0;
  if (MEM_P (decl_rtl)
      && contains_symbol_ref (XEXP (decl_rtl, 0)))
    return 0;



  if (MEM_P (decl_rtl))
    {

      if (GET_MODE (decl_rtl) == BLKmode
   || AGGREGATE_TYPE_P (TREE_TYPE (realdecl)))
 return 0;
      if (MEM_SIZE (decl_rtl)
   && INTVAL (MEM_SIZE (decl_rtl)) > MAX_VAR_PARTS)
 return 0;
    }

  return 1;
}
