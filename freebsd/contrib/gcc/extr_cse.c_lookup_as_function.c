
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_elt {int exp; struct table_elt* next_same_value; struct table_elt* first_same_value; } ;
typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int CONST_INT ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 int PUT_MODE (int ,int ) ;
 int SAFE_HASH (int ,int ) ;
 int VOIDmode ;
 int copy_rtx (int ) ;
 scalar_t__ exp_equiv_p (int ,int ,int,int) ;
 struct table_elt* lookup (int ,int ,int ) ;
 int word_mode ;

__attribute__((used)) static rtx
lookup_as_function (rtx x, enum rtx_code code)
{
  struct table_elt *p
    = lookup (x, SAFE_HASH (x, VOIDmode), GET_MODE (x));




  if (p == 0 && code == CONST_INT
      && GET_MODE_SIZE (GET_MODE (x)) < GET_MODE_SIZE (word_mode))
    {
      x = copy_rtx (x);
      PUT_MODE (x, word_mode);
      p = lookup (x, SAFE_HASH (x, VOIDmode), word_mode);
    }

  if (p == 0)
    return 0;

  for (p = p->first_same_value; p; p = p->next_same_value)
    if (GET_CODE (p->exp) == code

 && exp_equiv_p (p->exp, p->exp, 1, 0))
      return p->exp;

  return 0;
}
