
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef unsigned int uchar ;
struct TYPE_15__ {unsigned int* text; int len; } ;
struct TYPE_16__ {TYPE_1__ str; } ;
struct TYPE_18__ {TYPE_2__ val; } ;
typedef TYPE_4__ cpp_token ;
struct TYPE_17__ {scalar_t__ in_directive; } ;
struct TYPE_19__ {TYPE_3__ state; } ;
typedef TYPE_5__ cpp_reader ;
typedef size_t cpp_num_part ;
struct TYPE_20__ {unsigned int low; int unsignedp; int overflow; scalar_t__ high; } ;
typedef TYPE_6__ cpp_num ;


 int CPP_DL_PEDWARN ;
 int CPP_DL_WARNING ;
 unsigned int CPP_N_BINARY ;
 unsigned int CPP_N_HEX ;
 unsigned int CPP_N_OCTAL ;
 unsigned int CPP_N_RADIX ;
 unsigned int CPP_N_UNSIGNED ;
 size_t CPP_OPTION (TYPE_5__*,int ) ;
 scalar_t__ ISDIGIT (unsigned int) ;
 scalar_t__ ISXDIGIT (unsigned int) ;
 size_t PART_PRECISION ;
 TYPE_6__ append_digit (TYPE_6__,unsigned int,unsigned int,size_t) ;
 int cpp_error (TYPE_5__*,int ,char*) ;
 unsigned int hex_value (unsigned int) ;
 int num_positive (TYPE_6__,size_t) ;
 size_t precision ;
 int traditional ;

cpp_num
cpp_interpret_integer (cpp_reader *pfile, const cpp_token *token,
         unsigned int type)
{
  const uchar *p, *end;
  cpp_num result;

  result.low = 0;
  result.high = 0;
  result.unsignedp = !!(type & CPP_N_UNSIGNED);
  result.overflow = 0;

  p = token->val.str.text;
  end = p + token->val.str.len;


  if (token->val.str.len == 1)
    result.low = p[0] - '0';
  else
    {
      cpp_num_part max;
      size_t precision = CPP_OPTION (pfile, precision);
      unsigned int base = 10, c = 0;
      bool overflow = 0;

      if ((type & CPP_N_RADIX) == CPP_N_OCTAL)
 {
   base = 8;
   p++;
 }
      else if ((type & CPP_N_RADIX) == CPP_N_HEX)
 {
   base = 16;
   p += 2;
 }
      else if ((type & CPP_N_RADIX) == CPP_N_BINARY)
 {
   base = 2;
   p += 2;
 }



      max = ~(cpp_num_part) 0;
      if (precision < PART_PRECISION)
 max >>= PART_PRECISION - precision;
      max = (max - base + 1) / base + 1;

      for (; p < end; p++)
 {
   c = *p;

   if (ISDIGIT (c) || (base == 16 && ISXDIGIT (c)))
     c = hex_value (c);
   else
     break;


   if (result.low < max)
     result.low = result.low * base + c;
   else
     {
       result = append_digit (result, c, base, precision);
       overflow |= result.overflow;
       max = 0;
     }
 }

      if (overflow)
 cpp_error (pfile, CPP_DL_PEDWARN,
     "integer constant is too large for its type");




      else if (!result.unsignedp
        && !(CPP_OPTION (pfile, traditional)
      && pfile->state.in_directive)
        && !num_positive (result, precision))
 {
   if (base == 10)
     cpp_error (pfile, CPP_DL_WARNING,
         "integer constant is so large that it is unsigned");
   result.unsignedp = 1;
 }
    }

  return result;
}
