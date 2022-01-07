
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int c_pretty_printer ;
struct TYPE_2__ {int flags; } ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;



 int pp_abstract_declarator (int *,int ) ;
 TYPE_1__* pp_c_base (int *) ;
 int pp_c_flag_abstract ;
 int pp_c_space_for_pointer_operator (int *,int ) ;
 int pp_c_tree_decl_identifier (int *,int ) ;
 int pp_parameter_list (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;

void
pp_c_direct_declarator (c_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 128:
    case 134:
    case 130:
    case 139:
    case 135:
      pp_c_space_for_pointer_operator (pp, TREE_TYPE (t));
      pp_c_tree_decl_identifier (pp, t);
      break;

    case 142:
    case 133:

    case 141:
      pp_abstract_declarator (pp, TREE_TYPE (t));
      break;

    case 137:
      pp_parameter_list (pp, t);
      pp_abstract_declarator (pp, TREE_TYPE (t));
      break;

    case 138:
      pp_c_space_for_pointer_operator (pp, TREE_TYPE (TREE_TYPE (t)));
      pp_c_tree_decl_identifier (pp, t);
      if (pp_c_base (pp)->flags & pp_c_flag_abstract)
 pp_abstract_declarator (pp, TREE_TYPE (t));
      else
 {
   pp_parameter_list (pp, t);
   pp_abstract_declarator (pp, TREE_TYPE (TREE_TYPE (t)));
 }
      break;

    case 136:
    case 132:
    case 140:
    case 129:
    case 131:
      break;

    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
