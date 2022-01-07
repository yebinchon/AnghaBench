
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t cpp_num_part ;
struct TYPE_4__ {size_t high; size_t low; int unsignedp; } ;
typedef TYPE_1__ cpp_num ;


 size_t PART_PRECISION ;

cpp_num
cpp_num_sign_extend (cpp_num num, size_t precision)
{
  if (!num.unsignedp)
    {
      if (precision > PART_PRECISION)
 {
   precision -= PART_PRECISION;
   if (precision < PART_PRECISION
       && (num.high & (cpp_num_part) 1 << (precision - 1)))
     num.high |= ~(~(cpp_num_part) 0 >> (PART_PRECISION - precision));
 }
      else if (num.low & (cpp_num_part) 1 << (precision - 1))
 {
   if (precision < PART_PRECISION)
     num.low |= ~(~(cpp_num_part) 0 >> (PART_PRECISION - precision));
   num.high = ~(cpp_num_part) 0;
 }
    }

  return num;
}
