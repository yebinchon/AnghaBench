
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ kind; struct TYPE_3__* declarator; } ;
typedef TYPE_1__ cp_declarator ;


 scalar_t__ cdk_function ;
 scalar_t__ cdk_pointer ;
 scalar_t__ cdk_ptrmem ;
 scalar_t__ cdk_reference ;
 int error (char*) ;
 int inform (char*,int ) ;

__attribute__((used)) static void
cp_parser_check_for_definition_in_return_type (cp_declarator *declarator,
            tree type)
{



  while (declarator
  && (declarator->kind == cdk_pointer
      || declarator->kind == cdk_reference
      || declarator->kind == cdk_ptrmem))
    declarator = declarator->declarator;
  if (declarator
      && declarator->kind == cdk_function)
    {
      error ("new types may not be defined in a return type");
      inform ("(perhaps a semicolon is missing after the definition of %qT)",
       type);
    }
}
