
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_CONSTRUCTOR_P (int ) ;
 int DECL_CONTEXT (int ) ;
 scalar_t__ DECL_CONV_FN_P (int ) ;
 scalar_t__ DECL_DESTRUCTOR_P (int ) ;
 int DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION (int ) ;
 int DECL_LANG_SPECIFIC (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ DECL_TEMPLATE_INFO (int ) ;
 int DECL_TEMPLATE_RESULT (int ) ;
 int DECL_TI_TEMPLATE (int ) ;
 int DECL_USE_TEMPLATE (int ) ;
 scalar_t__ IDENTIFIER_OPNAME_P (int ) ;
 scalar_t__ PRIMARY_TEMPLATE_P (int ) ;
 scalar_t__ TEMPLATE_DECL ;
 int TFF_PLAIN_IDENTIFIER ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int constructor_name (int ) ;
 int cxx_pp ;
 int dump_decl (int ,int) ;
 int dump_template_parms (scalar_t__,int,int) ;
 int dump_type (int ,int) ;
 int pp_cxx_complement (int ) ;
 int pp_cxx_identifier (int ,char*) ;
 int pp_cxx_tree_identifier (int ,int ) ;

__attribute__((used)) static void
dump_function_name (tree t, int flags)
{
  tree name = DECL_NAME (t);






  if (!DECL_LANG_SPECIFIC (t))
    {
      pp_cxx_tree_identifier (cxx_pp, name);
      return;
    }

  if (TREE_CODE (t) == TEMPLATE_DECL)
    t = DECL_TEMPLATE_RESULT (t);


  if (DECL_CONSTRUCTOR_P (t)
      || DECL_DESTRUCTOR_P (t))
    name = constructor_name (DECL_CONTEXT (t));

  if (DECL_DESTRUCTOR_P (t))
    {
      pp_cxx_complement (cxx_pp);
      dump_decl (name, TFF_PLAIN_IDENTIFIER);
    }
  else if (DECL_CONV_FN_P (t))
    {






      pp_cxx_identifier (cxx_pp, "operator");
      dump_type (TREE_TYPE (TREE_TYPE (t)), flags);
    }
  else if (IDENTIFIER_OPNAME_P (name))
    pp_cxx_tree_identifier (cxx_pp, name);
  else
    dump_decl (name, flags);

  if (DECL_TEMPLATE_INFO (t)
      && !DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION (t)
      && (TREE_CODE (DECL_TI_TEMPLATE (t)) != TEMPLATE_DECL
   || PRIMARY_TEMPLATE_P (DECL_TI_TEMPLATE (t))))
    dump_template_parms (DECL_TEMPLATE_INFO (t), !DECL_USE_TEMPLATE (t), flags);
}
