
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t cpp_num_part ;
struct TYPE_4__ {size_t high; size_t low; } ;
typedef TYPE_1__ cpp_num ;


 size_t PART_PRECISION ;

__attribute__((used)) static cpp_num
num_trim (cpp_num num, size_t precision)
{
  if (precision > PART_PRECISION)
    {
      precision -= PART_PRECISION;
      if (precision < PART_PRECISION)
 num.high &= ((cpp_num_part) 1 << precision) - 1;
    }
  else
    {
      if (precision < PART_PRECISION)
 num.low &= ((cpp_num_part) 1 << precision) - 1;
      num.high = 0;
    }

  return num;
}
