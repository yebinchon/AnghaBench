
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int class_type; int qualifiers; } ;
struct TYPE_8__ {TYPE_1__ pointer; } ;
struct TYPE_9__ {TYPE_2__ u; struct TYPE_9__* declarator; } ;
typedef TYPE_3__ cp_declarator ;
typedef int cp_cv_quals ;


 int NULL_TREE ;
 int cdk_reference ;
 TYPE_3__* make_declarator (int ) ;

cp_declarator *
make_reference_declarator (cp_cv_quals cv_qualifiers, cp_declarator *target)
{
  cp_declarator *declarator;

  declarator = make_declarator (cdk_reference);
  declarator->declarator = target;
  declarator->u.pointer.qualifiers = cv_qualifiers;
  declarator->u.pointer.class_type = NULL_TREE;

  return declarator;
}
