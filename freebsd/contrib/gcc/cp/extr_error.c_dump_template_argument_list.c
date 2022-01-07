
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_VEC_ELT (int ,int) ;
 int TREE_VEC_LENGTH (int ) ;
 int cxx_pp ;
 int dump_template_argument (int ,int) ;
 int pp_separate_with_comma (int ) ;

__attribute__((used)) static void
dump_template_argument_list (tree args, int flags)
{
  int n = TREE_VEC_LENGTH (args);
  int need_comma = 0;
  int i;

  for (i = 0; i< n; ++i)
    {
      if (need_comma)
 pp_separate_with_comma (cxx_pp);
      dump_template_argument (TREE_VEC_ELT (args, i), flags);
      need_comma = 1;
    }
}
