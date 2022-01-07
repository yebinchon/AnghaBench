
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_binding {int decl; struct c_binding* shadowed; } ;


 scalar_t__ B_IN_EXTERNAL_SCOPE (struct c_binding*) ;
 scalar_t__ B_IN_FILE_SCOPE (struct c_binding*) ;
 struct c_binding* I_SYMBOL_BINDING (int ) ;

tree
identifier_global_value (tree t)
{
  struct c_binding *b;

  for (b = I_SYMBOL_BINDING (t); b; b = b->shadowed)
    if (B_IN_FILE_SCOPE (b) || B_IN_EXTERNAL_SCOPE (b))
      return b->decl;

  return 0;
}
