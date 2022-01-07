
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct arg_lookup {int dummy; } ;


 int CP_DECL_CONTEXT (int ) ;
 scalar_t__ NAMESPACE_DECL ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TEMPLATE_TEMPLATE_PARM ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TYPE_P (int ) ;
 scalar_t__ UNBOUND_CLASS_TEMPLATE ;
 int arg_assoc_class (struct arg_lookup*,int ) ;
 int arg_assoc_namespace (struct arg_lookup*,int ) ;
 int arg_assoc_type (struct arg_lookup*,int ) ;

__attribute__((used)) static bool
arg_assoc_template_arg (struct arg_lookup *k, tree arg)
{
  if (TREE_CODE (arg) == TEMPLATE_TEMPLATE_PARM
      || TREE_CODE (arg) == UNBOUND_CLASS_TEMPLATE)
    return 0;
  else if (TREE_CODE (arg) == TEMPLATE_DECL)
    {
      tree ctx = CP_DECL_CONTEXT (arg);


      if (TREE_CODE (ctx) == NAMESPACE_DECL)
 return arg_assoc_namespace (k, ctx);

      else
 return arg_assoc_class (k, ctx);
    }


  else if (TYPE_P (arg))
    return arg_assoc_type (k, arg);

  else
    return 0;
}
