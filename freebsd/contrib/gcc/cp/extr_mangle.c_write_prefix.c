
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_2__ {int need_abi_warning; } ;


 scalar_t__ CLASSTYPE_TEMPLATE_ID_P (int * const) ;
 int * CP_DECL_CONTEXT (int *) ;
 scalar_t__ DECL_P (int * const) ;
 scalar_t__ FUNCTION_DECL ;
 TYPE_1__ G ;
 int MANGLE_TRACE_TREE (char*,int * const) ;
 scalar_t__ TEMPLATE_TYPE_PARM ;
 int TI_ARGS (int *) ;
 scalar_t__ TREE_CODE (int * const) ;
 int * TYPE_NAME (int * const) ;
 int * TYPE_TEMPLATE_INFO (int * const) ;
 scalar_t__ abi_version_at_least (int) ;
 int add_substitution (int * const) ;
 int decl_is_template_id (int *,int **) ;
 scalar_t__ find_substitution (int * const) ;
 int * const global_namespace ;
 int write_template_args (int ) ;
 int write_template_param (int * const) ;
 int write_template_prefix (int *) ;
 int write_unqualified_name (int *) ;

__attribute__((used)) static void
write_prefix (const tree node)
{
  tree decl;

  tree template_info = ((void*)0);

  MANGLE_TRACE_TREE ("prefix", node);

  if (node == ((void*)0)
      || node == global_namespace)
    return;

  if (find_substitution (node))
    return;

  if (DECL_P (node))
    {





      if (TREE_CODE (node) == FUNCTION_DECL)
 return;

      decl = node;
      decl_is_template_id (decl, &template_info);
    }
  else
    {

      decl = TYPE_NAME (node);
      if (CLASSTYPE_TEMPLATE_ID_P (node))
 template_info = TYPE_TEMPLATE_INFO (node);
    }


  if (TREE_CODE (node) == TEMPLATE_TYPE_PARM
      && !abi_version_at_least (2))
    G.need_abi_warning = 1;

  if (TREE_CODE (node) == TEMPLATE_TYPE_PARM
      && abi_version_at_least (2))
    write_template_param (node);
  else if (template_info != ((void*)0))

    {
      write_template_prefix (decl);
      write_template_args (TI_ARGS (template_info));
    }
  else

    {
      write_prefix (CP_DECL_CONTEXT (decl));
      write_unqualified_name (decl);
    }

  add_substitution (node);
}
