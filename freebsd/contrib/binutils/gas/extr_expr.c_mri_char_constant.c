
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int X_add_number; void* X_op; } ;
typedef TYPE_1__ expressionS ;


 int CHARS_PER_LITTLENUM ;
 int LITTLENUM_MASK ;
 int LITTLENUM_NUMBER_OF_BITS ;
 void* O_big ;
 void* O_constant ;
 int SIZE_OF_LARGE_NUMBER ;
 int _ (char*) ;
 int as_bad (int ) ;
 int* generic_bignum ;
 char* input_line_pointer ;
 int know (int) ;

__attribute__((used)) static void
mri_char_constant (expressionS *expressionP)
{
  int i;

  if (*input_line_pointer == '\''
      && input_line_pointer[1] != '\'')
    {
      expressionP->X_op = O_constant;
      expressionP->X_add_number = 0;
      return;
    }



  for (i = SIZE_OF_LARGE_NUMBER - 1; i >= 0; i--)
    {
      int j;

      generic_bignum[i] = 0;
      for (j = 0; j < CHARS_PER_LITTLENUM; j++)
 {
   if (*input_line_pointer == '\'')
     {
       if (input_line_pointer[1] != '\'')
  break;
       ++input_line_pointer;
     }
   generic_bignum[i] <<= 8;
   generic_bignum[i] += *input_line_pointer;
   ++input_line_pointer;
 }

      if (i < SIZE_OF_LARGE_NUMBER - 1)
 {



   for (; j < CHARS_PER_LITTLENUM; j++)
     generic_bignum[i] <<= 8;
 }

      if (*input_line_pointer == '\''
   && input_line_pointer[1] != '\'')
 break;
    }

  if (i < 0)
    {
      as_bad (_("character constant too large"));
      i = 0;
    }

  if (i > 0)
    {
      int c;
      int j;

      c = SIZE_OF_LARGE_NUMBER - i;
      for (j = 0; j < c; j++)
 generic_bignum[j] = generic_bignum[i + j];
      i = c;
    }

  know (LITTLENUM_NUMBER_OF_BITS == 16);
  if (i > 2)
    {
      expressionP->X_op = O_big;
      expressionP->X_add_number = i;
    }
  else
    {
      expressionP->X_op = O_constant;
      if (i < 2)
 expressionP->X_add_number = generic_bignum[0] & LITTLENUM_MASK;
      else
 expressionP->X_add_number =
   (((generic_bignum[1] & LITTLENUM_MASK)
     << LITTLENUM_NUMBER_OF_BITS)
    | (generic_bignum[0] & LITTLENUM_MASK));
    }


  ++input_line_pointer;
}
