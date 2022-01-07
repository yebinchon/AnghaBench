
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int cxx_pretty_printer ;


 int * DECL_TEMPLATE_RESULT (int *) ;
 scalar_t__ TEMPLATE_DECL ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_VEC_ELT (int *,int) ;
 int TREE_VEC_LENGTH (int *) ;
 scalar_t__ TYPE_P (int *) ;
 int pp_cxx_expression (int *,int *) ;
 int pp_cxx_separate_with (int *,char) ;
 int pp_cxx_type_id (int *,int *) ;

__attribute__((used)) static void
pp_cxx_template_argument_list (cxx_pretty_printer *pp, tree t)
{
  int i;
  if (t == ((void*)0))
    return;
  for (i = 0; i < TREE_VEC_LENGTH (t); ++i)
    {
      tree arg = TREE_VEC_ELT (t, i);
      if (i != 0)
 pp_cxx_separate_with (pp, ',');
      if (TYPE_P (arg) || (TREE_CODE (arg) == TEMPLATE_DECL
      && TYPE_P (DECL_TEMPLATE_RESULT (arg))))
 pp_cxx_type_id (pp, arg);
      else
 pp_cxx_expression (pp, arg);
    }
}
