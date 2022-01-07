
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int TREE_OPERAND (int ,int) ;
 int pp_cxx_begin_template_argument_list (int *) ;
 int pp_cxx_end_template_argument_list (int *) ;
 int pp_cxx_template_argument_list (int *,int ) ;
 int pp_cxx_unqualified_id (int *,int ) ;

__attribute__((used)) static inline void
pp_cxx_template_id (cxx_pretty_printer *pp, tree t)
{
  pp_cxx_unqualified_id (pp, TREE_OPERAND (t, 0));
  pp_cxx_begin_template_argument_list (pp);
  pp_cxx_template_argument_list (pp, TREE_OPERAND (t, 1));
  pp_cxx_end_template_argument_list (pp);
}
