
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {scalar_t__ exp; scalar_t__ is_const; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
struct qty_table_elem {scalar_t__ const_rtx; } ;
typedef scalar_t__ rtx ;


 scalar_t__ CONSTANT_P (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ MEM_P (scalar_t__) ;
 int NULL_RTX ;
 int REGNO (scalar_t__) ;
 scalar_t__ REGNO_QTY_VALID_P (int ) ;
 scalar_t__ REG_P (scalar_t__) ;
 int REG_QTY (int ) ;
 int SAFE_HASH (scalar_t__,int ) ;
 scalar_t__ fold_rtx (scalar_t__,int ) ;
 scalar_t__ gen_lowpart (int ,scalar_t__) ;
 struct table_elt* lookup (scalar_t__,int ,int ) ;
 struct qty_table_elem* qty_table ;

__attribute__((used)) static rtx
equiv_constant (rtx x)
{
  if (REG_P (x)
      && REGNO_QTY_VALID_P (REGNO (x)))
    {
      int x_q = REG_QTY (REGNO (x));
      struct qty_table_elem *x_ent = &qty_table[x_q];

      if (x_ent->const_rtx)
 x = gen_lowpart (GET_MODE (x), x_ent->const_rtx);
    }

  if (x == 0 || CONSTANT_P (x))
    return x;






  if (MEM_P (x))
    {
      struct table_elt *elt;

      x = fold_rtx (x, NULL_RTX);
      if (CONSTANT_P (x))
 return x;

      elt = lookup (x, SAFE_HASH (x, GET_MODE (x)), GET_MODE (x));
      if (elt == 0)
 return 0;

      for (elt = elt->first_same_value; elt; elt = elt->next_same_value)
 if (elt->is_const && CONSTANT_P (elt->exp))
   return elt->exp;
    }

  return 0;
}
