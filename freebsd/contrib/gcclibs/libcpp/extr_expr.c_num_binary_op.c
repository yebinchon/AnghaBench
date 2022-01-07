
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_20__ {int skip_eval; } ;
struct TYPE_21__ {TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_22__ {int unsignedp; size_t low; int overflow; scalar_t__ high; } ;
typedef TYPE_3__ cpp_num ;


 int CPP_DL_PEDWARN ;


 size_t CPP_OPTION (TYPE_2__*,int ) ;
 int CPP_PEDANTIC (TYPE_2__*) ;


 int c99 ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 TYPE_3__ num_lshift (TYPE_3__,size_t,size_t) ;
 TYPE_3__ num_negate (TYPE_3__,size_t) ;
 int num_positive (TYPE_3__,size_t) ;
 TYPE_3__ num_rshift (TYPE_3__,size_t,size_t) ;
 TYPE_3__ num_trim (TYPE_3__,size_t) ;
 size_t precision ;

__attribute__((used)) static cpp_num
num_binary_op (cpp_reader *pfile, cpp_num lhs, cpp_num rhs, enum cpp_ttype op)
{
  cpp_num result;
  size_t precision = CPP_OPTION (pfile, precision);
  size_t n;

  switch (op)
    {

    case 131:
    case 128:
      if (!rhs.unsignedp && !num_positive (rhs, precision))
 {

   if (op == 131)
     op = 128;
   else
     op = 131;
   rhs = num_negate (rhs, precision);
 }
      if (rhs.high)
 n = ~0;
      else
 n = rhs.low;
      if (op == 131)
 lhs = num_lshift (lhs, precision, n);
      else
 lhs = num_rshift (lhs, precision, n);
      break;


    case 130:
      rhs = num_negate (rhs, precision);
    case 129:
      result.low = lhs.low + rhs.low;
      result.high = lhs.high + rhs.high;
      if (result.low < lhs.low)
 result.high++;
      result.unsignedp = lhs.unsignedp || rhs.unsignedp;
      result.overflow = 0;

      result = num_trim (result, precision);
      if (!result.unsignedp)
 {
   bool lhsp = num_positive (lhs, precision);
   result.overflow = (lhsp == num_positive (rhs, precision)
        && lhsp != num_positive (result, precision));
 }
      return result;


    default:
      if (CPP_PEDANTIC (pfile) && (!CPP_OPTION (pfile, c99)
       || !pfile->state.skip_eval))
 cpp_error (pfile, CPP_DL_PEDWARN,
     "comma operator in operand of #if");
      lhs = rhs;
      break;
    }

  return lhs;
}
