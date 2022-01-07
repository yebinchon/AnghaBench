
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* global_decl ) (scalar_t__) ;} ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 TYPE_1__* debug_hooks ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void
c_write_global_declarations_2 (tree globals)
{
  tree decl;

  for (decl = globals; decl ; decl = TREE_CHAIN (decl))
    debug_hooks->global_decl (decl);
}
