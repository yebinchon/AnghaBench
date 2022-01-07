
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;
 int TREE_CODE (int ) ;


 int pp_c_tree_decl_identifier (int *,int ) ;
 int pp_c_tree_identifier (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;

void
pp_c_id_expression (c_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 128:
    case 130:
    case 135:
    case 129:
    case 133:
    case 134:
    case 131:
      pp_c_tree_decl_identifier (pp, t);
      break;

    case 132:
      pp_c_tree_identifier (pp, t);
      break;

    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
