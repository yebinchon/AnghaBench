
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CONST_DOUBLE_HIGH (int ) ;
 scalar_t__ CONST_DOUBLE_LOW (int ) ;
 int CONST_DOUBLE_REAL_VALUE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ VOIDmode ;
 int real_identical (int ,int ) ;

__attribute__((used)) static int
const_double_htab_eq (const void *x, const void *y)
{
  rtx a = (rtx)x, b = (rtx)y;

  if (GET_MODE (a) != GET_MODE (b))
    return 0;
  if (GET_MODE (a) == VOIDmode)
    return (CONST_DOUBLE_LOW (a) == CONST_DOUBLE_LOW (b)
     && CONST_DOUBLE_HIGH (a) == CONST_DOUBLE_HIGH (b));
  else
    return real_identical (CONST_DOUBLE_REAL_VALUE (a),
      CONST_DOUBLE_REAL_VALUE (b));
}
