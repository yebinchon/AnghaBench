
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef int cpp_reader ;
struct TYPE_9__ {int low; int overflow; int unsignedp; scalar_t__ high; } ;
typedef TYPE_1__ cpp_num ;


 int CPP_GREATER ;
 int CPP_GREATER_EQ ;
 int CPP_LESS ;
 int CPP_OPTION (int *,int ) ;
 scalar_t__ num_eq (TYPE_1__,TYPE_1__) ;
 int num_greater_eq (TYPE_1__,TYPE_1__,int ) ;
 int precision ;

__attribute__((used)) static cpp_num
num_inequality_op (cpp_reader *pfile, cpp_num lhs, cpp_num rhs,
     enum cpp_ttype op)
{
  bool gte = num_greater_eq (lhs, rhs, CPP_OPTION (pfile, precision));

  if (op == CPP_GREATER_EQ)
    lhs.low = gte;
  else if (op == CPP_LESS)
    lhs.low = !gte;
  else if (op == CPP_GREATER)
    lhs.low = gte && !num_eq (lhs, rhs);
  else
    lhs.low = !gte || num_eq (lhs, rhs);

  lhs.high = 0;
  lhs.overflow = 0;
  lhs.unsignedp = 0;
  return lhs;
}
