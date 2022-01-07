
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {scalar_t__ related_value; scalar_t__ exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
typedef scalar_t__ rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int SAFE_HASH (scalar_t__,int ) ;
 scalar_t__ get_integer_term (scalar_t__) ;
 scalar_t__ get_related_value (scalar_t__) ;
 struct table_elt* lookup (scalar_t__,int ,int ) ;
 scalar_t__ plus_constant (scalar_t__,scalar_t__) ;
 scalar_t__ rtx_equal_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
use_related_value (rtx x, struct table_elt *elt)
{
  struct table_elt *relt = 0;
  struct table_elt *p, *q;
  HOST_WIDE_INT offset;





  if (elt != 0 && elt->related_value != 0)
    relt = elt;
  else if (elt == 0 && GET_CODE (x) == CONST)
    {
      rtx subexp = get_related_value (x);
      if (subexp != 0)
 relt = lookup (subexp,
         SAFE_HASH (subexp, GET_MODE (subexp)),
         GET_MODE (subexp));
    }

  if (relt == 0)
    return 0;




  p = relt;
  while (1)
    {
      if (rtx_equal_p (x, p->exp))
 q = 0;
      else
 for (q = p->first_same_value; q; q = q->next_same_value)
   if (REG_P (q->exp))
     break;

      if (q)
 break;

      p = p->related_value;




      if (p == relt || p == 0)
 break;
    }

  if (q == 0)
    return 0;

  offset = (get_integer_term (x) - get_integer_term (p->exp));

  return plus_constant (q->exp, offset);
}
