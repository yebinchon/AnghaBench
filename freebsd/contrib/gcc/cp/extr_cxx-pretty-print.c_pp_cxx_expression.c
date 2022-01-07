
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;
 int OVL_CURRENT (int ) ;
 int TREE_CODE (int ) ;






 int pp_c_base (int *) ;
 int pp_c_expression (int ,int ) ;
 int pp_cxx_assignment_expression (int *,int ) ;
 int pp_cxx_cast_expression (int *,int ) ;
 int pp_cxx_conditional_expression (int *,int ) ;
 int pp_cxx_constant (int *,int ) ;
 int pp_cxx_delete_expression (int *,int ) ;
 int pp_cxx_multiplicative_expression (int *,int ) ;
 int pp_cxx_new_expression (int *,int ) ;
 int pp_cxx_pm_expression (int *,int ) ;
 int pp_cxx_postfix_expression (int *,int ) ;
 int pp_cxx_primary_expression (int *,int ) ;
 int pp_cxx_qualified_id (int *,int ) ;
 int pp_cxx_unary_expression (int *,int ) ;
 int pp_cxx_unqualified_id (int *,int ) ;

__attribute__((used)) static void
pp_cxx_expression (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 139:
    case 159:
    case 146:
      pp_cxx_constant (pp, t);
      break;

    case 144:
      pp_cxx_unqualified_id (pp, t);
      break;




    case 143:
    case 147:
      pp_cxx_qualified_id (pp, t);
      break;

    case 150:
      t = OVL_CURRENT (t);
    case 130:
    case 149:
    case 162:
    case 167:
    case 161:
    case 172:
    case 138:
    case 135:
    case 137:
    case 136:
    case 140:
      pp_cxx_primary_expression (pp, t);
      break;

    case 171:
    case 164:
    case 141:
    case 145:
    case 168:



    case 163:
    case 131:
    case 148:
    case 175:
    case 173:
      pp_cxx_postfix_expression (pp, t);
      break;

    case 153:
    case 128:
      pp_cxx_new_expression (pp, t);
      break;

    case 166:
    case 129:
      pp_cxx_delete_expression (pp, t);
      break;

    case 142:
    case 174:
      pp_cxx_unary_expression (pp, t);
      break;

    case 170:
      pp_cxx_cast_expression (pp, t);
      break;

    case 151:
    case 158:
    case 165:
      pp_cxx_pm_expression (pp, t);
      break;

    case 155:
    case 133:
    case 132:
      pp_cxx_multiplicative_expression (pp, t);
      break;

    case 169:
      pp_cxx_conditional_expression (pp, t);
      break;

    case 157:
    case 160:
    case 134:
    case 156:
      pp_cxx_assignment_expression (pp, t);
      break;

    case 152:
    case 154:
      pp_cxx_expression (pp, t);
      break;

    default:
      pp_c_expression (pp_c_base (pp), t);
      break;
    }
}
