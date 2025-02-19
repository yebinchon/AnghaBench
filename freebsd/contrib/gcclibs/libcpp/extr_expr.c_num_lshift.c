
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int overflow; size_t high; size_t low; scalar_t__ unsignedp; } ;
typedef TYPE_1__ cpp_num ;


 size_t PART_PRECISION ;
 int num_eq (TYPE_1__,TYPE_1__) ;
 TYPE_1__ num_rshift (TYPE_1__,size_t,size_t) ;
 TYPE_1__ num_trim (TYPE_1__,size_t) ;
 int num_zerop (TYPE_1__) ;

__attribute__((used)) static cpp_num
num_lshift (cpp_num num, size_t precision, size_t n)
{
  if (n >= precision)
    {
      num.overflow = !num.unsignedp && !num_zerop (num);
      num.high = num.low = 0;
    }
  else
    {
      cpp_num orig, maybe_orig;
      size_t m = n;

      orig = num;
      if (m >= PART_PRECISION)
 {
   m -= PART_PRECISION;
   num.high = num.low;
   num.low = 0;
 }
      if (m)
 {
   num.high = (num.high << m) | (num.low >> (PART_PRECISION - m));
   num.low <<= m;
 }
      num = num_trim (num, precision);

      if (num.unsignedp)
 num.overflow = 0;
      else
 {
   maybe_orig = num_rshift (num, precision, n);
   num.overflow = !num_eq (orig, maybe_orig);
 }
    }

  return num;
}
