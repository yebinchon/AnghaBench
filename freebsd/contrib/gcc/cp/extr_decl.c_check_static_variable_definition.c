
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int ARITHMETIC_TYPE_P (int ) ;
 int CP_TYPE_CONST_P (int ) ;
 scalar_t__ ENUMERAL_TYPE ;
 int INTEGRAL_TYPE_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int error (char*,int ) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,int ,int ) ;

int
check_static_variable_definition (tree decl, tree type)
{






  if (!ARITHMETIC_TYPE_P (type) && TREE_CODE (type) != ENUMERAL_TYPE)
    {
      error ("invalid in-class initialization of static data member "
      "of non-integral type %qT",
      type);




      return 1;
    }
  else if (!CP_TYPE_CONST_P (type))
    error ("ISO C++ forbids in-class initialization of non-const "
    "static member %qD",
    decl);
  else if (pedantic && !INTEGRAL_TYPE_P (type))
    pedwarn ("ISO C++ forbids initialization of member constant "
      "%qD of non-integral type %qT", decl, type);

  return 0;
}
