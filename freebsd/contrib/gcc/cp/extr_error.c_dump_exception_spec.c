
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int cxx_pp ;
 int dump_type (scalar_t__,int) ;
 int pp_cxx_identifier (int ,char*) ;
 int pp_cxx_left_paren (int ) ;
 int pp_cxx_right_paren (int ) ;
 int pp_cxx_whitespace (int ) ;
 int pp_separate_with_comma (int ) ;

__attribute__((used)) static void
dump_exception_spec (tree t, int flags)
{
  if (t)
    {
      pp_cxx_identifier (cxx_pp, "throw");
      pp_cxx_whitespace (cxx_pp);
      pp_cxx_left_paren (cxx_pp);
      if (TREE_VALUE (t) != NULL_TREE)
 while (1)
   {
     dump_type (TREE_VALUE (t), flags);
     t = TREE_CHAIN (t);
     if (!t)
       break;
     pp_separate_with_comma (cxx_pp);
   }
      pp_cxx_right_paren (cxx_pp);
    }
}
