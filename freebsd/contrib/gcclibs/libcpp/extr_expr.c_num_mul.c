
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int cpp_reader ;
struct TYPE_14__ {int unsignedp; int overflow; scalar_t__ high; scalar_t__ low; } ;
typedef TYPE_1__ cpp_num ;


 size_t CPP_OPTION (int *,int ) ;
 int num_eq (TYPE_1__,TYPE_1__) ;
 TYPE_1__ num_negate (TYPE_1__,size_t) ;
 TYPE_1__ num_part_mul (scalar_t__,scalar_t__) ;
 int num_positive (TYPE_1__,size_t) ;
 TYPE_1__ num_trim (TYPE_1__,size_t) ;
 int num_zerop (TYPE_1__) ;
 size_t precision ;

__attribute__((used)) static cpp_num
num_mul (cpp_reader *pfile, cpp_num lhs, cpp_num rhs)
{
  cpp_num result, temp;
  bool unsignedp = lhs.unsignedp || rhs.unsignedp;
  bool overflow, negate = 0;
  size_t precision = CPP_OPTION (pfile, precision);


  if (!unsignedp)
    {
      if (!num_positive (lhs, precision))
 negate = !negate, lhs = num_negate (lhs, precision);
      if (!num_positive (rhs, precision))
 negate = !negate, rhs = num_negate (rhs, precision);
    }

  overflow = lhs.high && rhs.high;
  result = num_part_mul (lhs.low, rhs.low);

  temp = num_part_mul (lhs.high, rhs.low);
  result.high += temp.low;
  if (temp.high)
    overflow = 1;

  temp = num_part_mul (lhs.low, rhs.high);
  result.high += temp.low;
  if (temp.high)
    overflow = 1;

  temp.low = result.low, temp.high = result.high;
  result = num_trim (result, precision);
  if (!num_eq (result, temp))
    overflow = 1;

  if (negate)
    result = num_negate (result, precision);

  if (unsignedp)
    result.overflow = 0;
  else
    result.overflow = overflow || (num_positive (result, precision) ^ !negate
       && !num_zerop (result));
  result.unsignedp = unsignedp;

  return result;
}
