
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int operatorT ;


 int O_bit_exclusive_or ;
 int O_bit_inclusive_or ;
 int O_eq ;
 int O_ge ;
 int O_illegal ;
 int O_le ;
 int O_left_shift ;
 int O_logical_and ;
 int O_logical_or ;
 int O_ne ;
 int O_right_shift ;
 int flag_m68k_mri ;
 int* input_line_pointer ;
 scalar_t__* is_end_of_line ;
 int * op_encoding ;

__attribute__((used)) static inline operatorT
operator (int *num_chars)
{
  int c;
  operatorT ret;

  c = *input_line_pointer & 0xff;
  *num_chars = 1;

  if (is_end_of_line[c])
    return O_illegal;

  switch (c)
    {
    default:
      return op_encoding[c];

    case '+':
    case '-':
      return op_encoding[c];

    case '<':
      switch (input_line_pointer[1])
 {
 default:
   return op_encoding[c];
 case '<':
   ret = O_left_shift;
   break;
 case '>':
   ret = O_ne;
   break;
 case '=':
   ret = O_le;
   break;
 }
      *num_chars = 2;
      return ret;

    case '=':
      if (input_line_pointer[1] != '=')
 return op_encoding[c];

      *num_chars = 2;
      return O_eq;

    case '>':
      switch (input_line_pointer[1])
 {
 default:
   return op_encoding[c];
 case '>':
   ret = O_right_shift;
   break;
 case '=':
   ret = O_ge;
   break;
 }
      *num_chars = 2;
      return ret;

    case '!':
      switch (input_line_pointer[1])
 {
 case '!':

   *num_chars = 2;
   return O_bit_exclusive_or;
 case '=':

   *num_chars = 2;
   return O_ne;
 default:
   if (flag_m68k_mri)
     return O_bit_inclusive_or;
   return op_encoding[c];
 }

    case '|':
      if (input_line_pointer[1] != '|')
 return op_encoding[c];

      *num_chars = 2;
      return O_logical_or;

    case '&':
      if (input_line_pointer[1] != '&')
 return op_encoding[c];

      *num_chars = 2;
      return O_logical_and;
    }


}
