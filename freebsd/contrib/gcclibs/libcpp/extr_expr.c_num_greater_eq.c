
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ high; scalar_t__ low; int unsignedp; } ;
typedef TYPE_1__ cpp_num ;


 int num_positive (TYPE_1__,size_t) ;

__attribute__((used)) static bool
num_greater_eq (cpp_num pa, cpp_num pb, size_t precision)
{
  bool unsignedp;

  unsignedp = pa.unsignedp || pb.unsignedp;

  if (!unsignedp)
    {


      unsignedp = num_positive (pa, precision);

      if (unsignedp != num_positive (pb, precision))
 return unsignedp;


    }

  return (pa.high > pb.high) || (pa.high == pb.high && pa.low >= pb.low);
}
