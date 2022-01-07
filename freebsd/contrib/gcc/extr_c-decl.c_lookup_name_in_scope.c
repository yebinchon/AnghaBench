
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_scope {int dummy; } ;
struct c_binding {int decl; struct c_binding* shadowed; } ;


 scalar_t__ B_IN_SCOPE (struct c_binding*,struct c_scope*) ;
 struct c_binding* I_SYMBOL_BINDING (int ) ;

__attribute__((used)) static tree
lookup_name_in_scope (tree name, struct c_scope *scope)
{
  struct c_binding *b;

  for (b = I_SYMBOL_BINDING (name); b; b = b->shadowed)
    if (B_IN_SCOPE (b, scope))
      return b->decl;
  return 0;
}
