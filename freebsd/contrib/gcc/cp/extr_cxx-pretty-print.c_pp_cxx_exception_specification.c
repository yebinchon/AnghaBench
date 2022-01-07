
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef int cxx_pretty_printer ;


 int * TREE_CHAIN (int *) ;
 scalar_t__ TREE_VALUE (int *) ;
 int TYPE_NOTHROW_P (int *) ;
 int * TYPE_RAISES_EXCEPTIONS (int *) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_left_paren (int *) ;
 int pp_cxx_right_paren (int *) ;
 int pp_cxx_separate_with (int *,char) ;
 int pp_cxx_type_id (int *,scalar_t__) ;

__attribute__((used)) static void
pp_cxx_exception_specification (cxx_pretty_printer *pp, tree t)
{
  tree ex_spec = TYPE_RAISES_EXCEPTIONS (t);

  if (!TYPE_NOTHROW_P (t) && ex_spec == ((void*)0))
    return;
  pp_cxx_identifier (pp, "throw");
  pp_cxx_left_paren (pp);
  for (; ex_spec && TREE_VALUE (ex_spec); ex_spec = TREE_CHAIN (ex_spec))
    {
      pp_cxx_type_id (pp, TREE_VALUE (ex_spec));
      if (TREE_CHAIN (ex_spec))
 pp_cxx_separate_with (pp, ',');
    }
  pp_cxx_right_paren (pp);
}
