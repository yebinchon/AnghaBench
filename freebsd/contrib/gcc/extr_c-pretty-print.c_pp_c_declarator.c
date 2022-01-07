
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;
 int TREE_CODE (int ) ;



 int pp_direct_declarator (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;

void
pp_c_declarator (c_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 134:
    case 132:
    case 138:
    case 129:
    case 131:
      break;

    case 128:
    case 133:
    case 137:
    case 139:
    case 135:
    case 136:
    case 130:
      pp_direct_declarator (pp, t);
    break;


    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
