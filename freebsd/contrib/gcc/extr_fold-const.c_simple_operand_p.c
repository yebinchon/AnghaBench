
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONSTANT_CLASS_P (int ) ;
 int DECL_EXTERNAL (int ) ;
 int DECL_NONLOCAL (int ) ;
 scalar_t__ DECL_P (int ) ;
 scalar_t__ DECL_REGISTER (int ) ;
 scalar_t__ SSA_NAME ;
 int STRIP_NOPS (int ) ;
 int TREE_ADDRESSABLE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_PUBLIC (int ) ;
 int TREE_STATIC (int ) ;
 int TREE_THIS_VOLATILE (int ) ;

__attribute__((used)) static int
simple_operand_p (tree exp)
{

  STRIP_NOPS (exp);

  return (CONSTANT_CLASS_P (exp)
   || TREE_CODE (exp) == SSA_NAME
   || (DECL_P (exp)
       && ! TREE_ADDRESSABLE (exp)
       && ! TREE_THIS_VOLATILE (exp)
       && ! DECL_NONLOCAL (exp)



       && ! TREE_PUBLIC (exp)
       && ! DECL_EXTERNAL (exp)


       && (! TREE_STATIC (exp) || DECL_REGISTER (exp))));
}
