
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int pp_needs_newline ;
typedef int c_pretty_printer ;




 int DECL_EXPR_DECL (int ) ;


 int const TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int const TYPE_DECL ;
 int TYPE_P (int ) ;
 int pp_c_ampersand (int *) ;
 int pp_c_caret (int *) ;
 int pp_c_star (int *) ;
 int pp_c_type_qualifier_list (int *,int ) ;
 int pp_declaration (int *,int ) ;
 int pp_unsupported_tree (int,int ) ;

__attribute__((used)) static void
pp_c_pointer (c_pretty_printer *pp, tree t)
{
  if (!TYPE_P (t) && TREE_CODE (t) != TYPE_DECL)
    t = TREE_TYPE (t);
  switch (TREE_CODE (t))
    {
    case 129:

    case 128:
      if (TREE_CODE (TREE_TYPE (t)) == 129)
 pp_c_pointer (pp, TREE_TYPE (t));
      if (TREE_CODE (t) == 129)
 pp_c_star (pp);
      else
 pp_c_ampersand (pp);
      pp_c_type_qualifier_list (pp, t);
      break;

    case 131:
      pp_c_caret (pp);
      pp_c_type_qualifier_list (pp, t);
      break;




    case 130:
      pp_declaration (pp, DECL_EXPR_DECL (t));
      pp_needs_newline (pp) = 1;
      break;

    default:
      pp_unsupported_tree (pp, t);
    }
}
