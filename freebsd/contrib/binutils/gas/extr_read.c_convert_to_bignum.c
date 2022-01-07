
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int valueT ;
struct TYPE_3__ {int X_add_number; int X_op; scalar_t__ X_unsigned; } ;
typedef TYPE_1__ expressionS ;


 int CHARS_PER_LITTLENUM ;
 int LITTLENUM_MASK ;
 int LITTLENUM_NUMBER_OF_BITS ;
 int O_big ;
 int* generic_bignum ;

__attribute__((used)) static void
convert_to_bignum (expressionS *exp)
{
  valueT value;
  unsigned int i;

  value = exp->X_add_number;
  for (i = 0; i < sizeof (exp->X_add_number) / CHARS_PER_LITTLENUM; i++)
    {
      generic_bignum[i] = value & LITTLENUM_MASK;
      value >>= LITTLENUM_NUMBER_OF_BITS;
    }


  if ((exp->X_add_number < 0) != !exp->X_unsigned)
    generic_bignum[i++] = exp->X_unsigned ? 0 : LITTLENUM_MASK;
  exp->X_op = O_big;
  exp->X_add_number = i;
}
