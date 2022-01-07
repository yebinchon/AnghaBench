
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ using_directives; } ;


 scalar_t__ DECL_NAMESPACE_USING (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int POP_TIMEVAR_AND_RETURN (int ,scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PURPOSE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 TYPE_1__* current_binding_level ;
 int current_decl_namespace () ;
 scalar_t__ namespace_ancestor (int ,scalar_t__) ;
 scalar_t__ purpose_member (scalar_t__,scalar_t__) ;
 int timevar_push (int ) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
push_using_directive (tree used)
{
  tree ud = current_binding_level->using_directives;
  tree iter, ancestor;

  timevar_push (TV_NAME_LOOKUP);

  if (purpose_member (used, ud) != NULL_TREE)
    POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, NULL_TREE);

  ancestor = namespace_ancestor (current_decl_namespace (), used);
  ud = current_binding_level->using_directives;
  ud = tree_cons (used, ancestor, ud);
  current_binding_level->using_directives = ud;


  for (iter = DECL_NAMESPACE_USING (used); iter; iter = TREE_CHAIN (iter))
    push_using_directive (TREE_PURPOSE (iter));

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, ud);
}
