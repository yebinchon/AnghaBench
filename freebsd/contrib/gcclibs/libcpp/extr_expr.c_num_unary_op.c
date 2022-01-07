
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_15__ {int skip_eval; } ;
struct TYPE_16__ {TYPE_1__ state; } ;
typedef TYPE_2__ cpp_reader ;
struct TYPE_17__ {int overflow; int unsignedp; int high; int low; } ;
typedef TYPE_3__ cpp_num ;



 int CPP_DL_WARNING ;
 int CPP_OPTION (TYPE_2__*,int ) ;


 int CPP_WTRADITIONAL (TYPE_2__*) ;
 int cpp_error (TYPE_2__*,int ,char*) ;
 TYPE_3__ num_negate (TYPE_3__,int ) ;
 TYPE_3__ num_trim (TYPE_3__,int ) ;
 int num_zerop (TYPE_3__) ;
 int precision ;

__attribute__((used)) static cpp_num
num_unary_op (cpp_reader *pfile, cpp_num num, enum cpp_ttype op)
{
  switch (op)
    {
    case 128:
      if (CPP_WTRADITIONAL (pfile) && !pfile->state.skip_eval)
 cpp_error (pfile, CPP_DL_WARNING,
     "traditional C rejects the unary plus operator");
      num.overflow = 0;
      break;

    case 129:
      num = num_negate (num, CPP_OPTION (pfile, precision));
      break;

    case 130:
      num.high = ~num.high;
      num.low = ~num.low;
      num = num_trim (num, CPP_OPTION (pfile, precision));
      num.overflow = 0;
      break;

    default:
      num.low = num_zerop (num);
      num.high = 0;
      num.overflow = 0;
      num.unsignedp = 0;
      break;
    }

  return num;
}
