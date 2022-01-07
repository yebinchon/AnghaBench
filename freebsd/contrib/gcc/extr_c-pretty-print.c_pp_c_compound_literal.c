
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;





 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;


 int pp_c_brace_enclosed_initializer_list (int *,int ) ;
 int pp_c_type_cast (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;

__attribute__((used)) static void
pp_c_compound_literal (c_pretty_printer *pp, tree e)
{
  tree type = TREE_TYPE (e);
  pp_c_type_cast (pp, type);

  switch (TREE_CODE (type))
    {
    case 130:
    case 129:
    case 132:
    case 128:
    case 131:
      pp_c_brace_enclosed_initializer_list (pp, e);
      break;

    default:
      pp_unsupported_tree (pp, e);
      break;
    }
}
