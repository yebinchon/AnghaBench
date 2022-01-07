
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {int bounds; } ;
struct TYPE_8__ {TYPE_1__ array; } ;
struct TYPE_9__ {TYPE_2__ u; struct TYPE_9__* declarator; } ;
typedef TYPE_3__ cp_declarator ;


 int cdk_array ;
 TYPE_3__* make_declarator (int ) ;

cp_declarator *
make_array_declarator (cp_declarator *element, tree bounds)
{
  cp_declarator *declarator;

  declarator = make_declarator (cdk_array);
  declarator->declarator = element;
  declarator->u.array.bounds = bounds;

  return declarator;
}
