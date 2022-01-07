
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int overflow; int unsignedp; int high; int low; } ;
typedef TYPE_1__ cpp_num ;


 scalar_t__ num_eq (TYPE_1__,TYPE_1__) ;
 TYPE_1__ num_trim (TYPE_1__,size_t) ;
 int num_zerop (TYPE_1__) ;

__attribute__((used)) static cpp_num
num_negate (cpp_num num, size_t precision)
{
  cpp_num copy;

  copy = num;
  num.high = ~num.high;
  num.low = ~num.low;
  if (++num.low == 0)
    num.high++;
  num = num_trim (num, precision);
  num.overflow = (!num.unsignedp && num_eq (num, copy) && !num_zerop (num));

  return num;
}
