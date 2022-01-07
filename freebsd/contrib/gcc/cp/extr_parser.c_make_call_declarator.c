
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
typedef int cp_parameter_declarator ;
struct TYPE_7__ {int exception_specification; int qualifiers; int * parameters; } ;
struct TYPE_8__ {TYPE_1__ function; } ;
struct TYPE_9__ {TYPE_2__ u; struct TYPE_9__* declarator; } ;
typedef TYPE_3__ cp_declarator ;
typedef int cp_cv_quals ;


 int cdk_function ;
 TYPE_3__* make_declarator (int ) ;

cp_declarator *
make_call_declarator (cp_declarator *target,
        cp_parameter_declarator *parms,
        cp_cv_quals cv_qualifiers,
        tree exception_specification)
{
  cp_declarator *declarator;

  declarator = make_declarator (cdk_function);
  declarator->declarator = target;
  declarator->u.function.parameters = parms;
  declarator->u.function.qualifiers = cv_qualifiers;
  declarator->u.function.exception_specification = exception_specification;

  return declarator;
}
