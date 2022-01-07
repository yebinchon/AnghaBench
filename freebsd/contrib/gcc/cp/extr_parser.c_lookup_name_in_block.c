
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {struct TYPE_4__* previous; scalar_t__ declared_in_block; } ;
typedef TYPE_1__ cxx_binding ;


 int BINDING_VALUE (TYPE_1__*) ;
 scalar_t__ BLOCK_DECL_BYREF (int ) ;
 scalar_t__ DECL_CONTEXT (int ) ;
 TYPE_1__* I_SYMBOL_BINDING (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ VAR_DECL ;
 scalar_t__ current_function_decl ;

bool
lookup_name_in_block (tree name, tree *decl)
{


  cxx_binding *b = I_SYMBOL_BINDING (name);
  if (b && b->declared_in_block
      && DECL_CONTEXT (BINDING_VALUE (b)) == current_function_decl)
      return 1;







  while (b
   && TREE_CODE (BINDING_VALUE (b)) == VAR_DECL
   && (BLOCK_DECL_BYREF (BINDING_VALUE (b))))
      b = b->previous;
  if (b)
      *decl = BINDING_VALUE (b);
  return 0;
}
