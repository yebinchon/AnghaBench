
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int BITS_PER_UNIT ;
 scalar_t__ CONST_INT ;
 int GEN_INT (int) ;
 scalar_t__ GET_CODE (int ) ;
 int INTVAL (int ) ;
 int NULL_RTX ;
 int OPTAB_LIB_WIDEN ;
 int PREFERRED_STACK_BOUNDARY ;
 int Pmode ;
 int TRUNC_DIV_EXPR ;
 int add_optab ;
 int expand_binop (int ,int ,int ,int ,int ,int,int ) ;
 int expand_divmod (int ,int ,int ,int ,int ,int ,int) ;
 int expand_mult (int ,int ,int ,int ,int) ;

__attribute__((used)) static rtx
round_push (rtx size)
{
  int align = PREFERRED_STACK_BOUNDARY / BITS_PER_UNIT;

  if (align == 1)
    return size;

  if (GET_CODE (size) == CONST_INT)
    {
      HOST_WIDE_INT new = (INTVAL (size) + align - 1) / align * align;

      if (INTVAL (size) != new)
 size = GEN_INT (new);
    }
  else
    {



      size = expand_binop (Pmode, add_optab, size, GEN_INT (align - 1),
      NULL_RTX, 1, OPTAB_LIB_WIDEN);
      size = expand_divmod (0, TRUNC_DIV_EXPR, Pmode, size, GEN_INT (align),
       NULL_RTX, 1);
      size = expand_mult (Pmode, size, GEN_INT (align), NULL_RTX, 1);
    }

  return size;
}
