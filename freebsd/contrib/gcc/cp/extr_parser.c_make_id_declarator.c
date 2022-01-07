
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* tree ;
typedef int special_function_kind ;
struct TYPE_7__ {int sfk; void* unqualified_name; void* qualifying_scope; } ;
struct TYPE_6__ {TYPE_2__ id; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef TYPE_3__ cp_declarator ;


 scalar_t__ BIT_NOT_EXPR ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ TEMPLATE_ID_EXPR ;
 scalar_t__ TREE_CODE (void*) ;
 void* TYPE_MAIN_VARIANT (void*) ;
 scalar_t__ TYPE_P (void*) ;
 int cdk_id ;
 int gcc_assert (int) ;
 TYPE_3__* make_declarator (int ) ;

__attribute__((used)) static cp_declarator *
make_id_declarator (tree qualifying_scope, tree unqualified_name,
      special_function_kind sfk)
{
  cp_declarator *declarator;
  if (qualifying_scope && TYPE_P (qualifying_scope))
    qualifying_scope = TYPE_MAIN_VARIANT (qualifying_scope);

  gcc_assert (TREE_CODE (unqualified_name) == IDENTIFIER_NODE
       || TREE_CODE (unqualified_name) == BIT_NOT_EXPR
       || TREE_CODE (unqualified_name) == TEMPLATE_ID_EXPR);

  declarator = make_declarator (cdk_id);
  declarator->u.id.qualifying_scope = qualifying_scope;
  declarator->u.id.unqualified_name = unqualified_name;
  declarator->u.id.sfk = sfk;

  return declarator;
}
