
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int const ARRAY_TYPE ;




 int const TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int const TYPE_DECL ;
 int TYPE_P (int ) ;
 int TYPE_PTRMEMFUNC_OBJECT_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int TYPE_PTR_TO_MEMBER_P (int ) ;
 int pp_ampersand (int *) ;
 int pp_cxx_cv_qualifier_seq (int *,int ) ;
 int pp_cxx_left_paren (int *) ;
 int pp_cxx_nested_name_specifier (int *,int ) ;
 int pp_star (int *) ;
 int pp_unsupported_tree (int *,int ) ;

__attribute__((used)) static void
pp_cxx_ptr_operator (cxx_pretty_printer *pp, tree t)
{
  if (!TYPE_P (t) && TREE_CODE (t) != TYPE_DECL)
    t = TREE_TYPE (t);
  switch (TREE_CODE (t))
    {
    case 128:
    case 130:
      if (TREE_CODE (TREE_TYPE (t)) == 130
   || TYPE_PTR_TO_MEMBER_P (TREE_TYPE (t)))
 pp_cxx_ptr_operator (pp, TREE_TYPE (t));
      if (TREE_CODE (t) == 130)
 {
   pp_star (pp);
   pp_cxx_cv_qualifier_seq (pp, t);
 }
      else
 pp_ampersand (pp);
      break;

    case 129:
      if (TYPE_PTRMEMFUNC_P (t))
 {
   pp_cxx_left_paren (pp);
   pp_cxx_nested_name_specifier (pp, TYPE_PTRMEMFUNC_OBJECT_TYPE (t));
   pp_star (pp);
   break;
 }
    case 131:
      if (TYPE_PTR_TO_MEMBER_P (t))
 {
   if (TREE_CODE (TREE_TYPE (t)) == ARRAY_TYPE)
     pp_cxx_left_paren (pp);
   pp_cxx_nested_name_specifier (pp, TYPE_PTRMEM_CLASS_TYPE (t));
   pp_star (pp);
   pp_cxx_cv_qualifier_seq (pp, t);
   break;
 }


    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
