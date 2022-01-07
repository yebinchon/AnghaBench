
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ value; int value_is_inherited; TYPE_1__* scope; scalar_t__ type; } ;
typedef TYPE_2__ cxx_binding ;
struct TYPE_4__ {scalar_t__ kind; } ;


 scalar_t__ DECL_ANTICIPATED (scalar_t__) ;
 scalar_t__ DECL_ARTIFICIAL (scalar_t__) ;
 int DECL_CLASS_SCOPE_P (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 int DECL_HIDDEN_FRIEND_P (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_NAMESPACE_ALIAS (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ ORIGINAL_NAMESPACE (scalar_t__) ;
 int POP_TIMEVAR_AND_RETURN (int ,int) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int TV_NAME_LOOKUP ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ VAR_DECL ;
 int duplicate_decls (scalar_t__,scalar_t__,int) ;
 int error (char*,scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ same_type_p (int ,int ) ;
 scalar_t__ sk_class ;
 int timevar_push (int ) ;
 scalar_t__ uses_template_parms (int ) ;

__attribute__((used)) static bool
supplement_binding (cxx_binding *binding, tree decl)
{
  tree bval = binding->value;
  bool ok = 1;

  timevar_push (TV_NAME_LOOKUP);
  if (TREE_CODE (decl) == TYPE_DECL && DECL_ARTIFICIAL (decl))

    binding->type = decl;
  else if (


    !bval





    || bval == error_mark_node


    || (TREE_CODE (bval) == FUNCTION_DECL
        && DECL_ANTICIPATED (bval)
        && !DECL_HIDDEN_FRIEND_P (bval)))
    binding->value = decl;
  else if (TREE_CODE (bval) == TYPE_DECL && DECL_ARTIFICIAL (bval))
    {





      binding->type = bval;
      binding->value = decl;
      binding->value_is_inherited = 0;
    }
  else if (TREE_CODE (bval) == TYPE_DECL
    && TREE_CODE (decl) == TYPE_DECL
    && DECL_NAME (decl) == DECL_NAME (bval)
    && binding->scope->kind != sk_class
    && (same_type_p (TREE_TYPE (decl), TREE_TYPE (bval))


        || uses_template_parms (TREE_TYPE (decl))
        || uses_template_parms (TREE_TYPE (bval))))
    ok = 0;
  else if (TREE_CODE (decl) == VAR_DECL && TREE_CODE (bval) == VAR_DECL
    && DECL_EXTERNAL (decl) && DECL_EXTERNAL (bval)
    && !DECL_CLASS_SCOPE_P (decl))
    {
      duplicate_decls (decl, binding->value, 0);
      ok = 0;
    }
  else if (TREE_CODE (decl) == NAMESPACE_DECL
    && TREE_CODE (bval) == NAMESPACE_DECL
    && DECL_NAMESPACE_ALIAS (decl)
    && DECL_NAMESPACE_ALIAS (bval)
    && ORIGINAL_NAMESPACE (bval) == ORIGINAL_NAMESPACE (decl))






    ok = 0;
  else
    {
      error ("declaration of %q#D", decl);
      error ("conflicts with previous declaration %q+#D", bval);
      ok = 0;
    }

  POP_TIMEVAR_AND_RETURN (TV_NAME_LOOKUP, ok);
}
