
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; struct TYPE_3__* declarator; } ;
typedef TYPE_1__ cp_declarator ;


 scalar_t__ cdk_error ;
 scalar_t__ cdk_function ;
 scalar_t__ cdk_id ;

__attribute__((used)) static bool
function_declarator_p (const cp_declarator *declarator)
{
  while (declarator)
    {
      if (declarator->kind == cdk_function
   && declarator->declarator->kind == cdk_id)
 return 1;
      if (declarator->kind == cdk_id
   || declarator->kind == cdk_error)
 return 0;
      declarator = declarator->declarator;
    }
  return 0;
}
