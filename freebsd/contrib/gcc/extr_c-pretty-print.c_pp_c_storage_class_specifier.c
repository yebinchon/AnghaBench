
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ DECL_P (int ) ;
 scalar_t__ DECL_REGISTER (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ VAR_DECL ;
 int pp_c_identifier (int *,char*) ;

void
pp_c_storage_class_specifier (c_pretty_printer *pp, tree t)
{
  if (TREE_CODE (t) == TYPE_DECL)
    pp_c_identifier (pp, "typedef");
  else if (DECL_P (t))
    {
      if (DECL_REGISTER (t))
 pp_c_identifier (pp, "register");
      else if (TREE_STATIC (t) && TREE_CODE (t) == VAR_DECL)
 pp_c_identifier (pp, "static");
    }
}
