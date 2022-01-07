
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int * optab ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ TYPE_OVERFLOW_TRAPS (int ) ;
 int TYPE_UNSIGNED (int ) ;



 int * abs_optab ;
 int * absv_optab ;
 int * add_optab ;
 int * addv_optab ;
 int * and_optab ;
 int * ashl_optab ;
 int * ashr_optab ;
 int * ior_optab ;
 int * lshr_optab ;
 int * neg_optab ;
 int * negv_optab ;
 int * one_cmpl_optab ;
 int * reduc_smax_optab ;
 int * reduc_smin_optab ;
 int * reduc_splus_optab ;
 int * reduc_umax_optab ;
 int * reduc_umin_optab ;
 int * reduc_uplus_optab ;
 int * rotl_optab ;
 int * rotr_optab ;
 int * sdiv_optab ;
 int * sdot_prod_optab ;
 int * smax_optab ;
 int * smin_optab ;
 int * smod_optab ;
 int * smul_optab ;
 int * smulv_optab ;
 int * ssum_widen_optab ;
 int * sub_optab ;
 int * subv_optab ;
 int * udiv_optab ;
 int * udot_prod_optab ;
 int * umax_optab ;
 int * umin_optab ;
 int * umod_optab ;
 int * usum_widen_optab ;
 int * vec_realign_load_optab ;
 int * vec_shl_optab ;
 int * vec_shr_optab ;
 int * xor_optab ;

optab
optab_for_tree_code (enum tree_code code, tree type)
{
  bool trapv;
  switch (code)
    {
    case 159:
      return and_optab;

    case 158:
      return ior_optab;

    case 157:
      return one_cmpl_optab;

    case 156:
      return xor_optab;

    case 131:
    case 154:
    case 150:
    case 135:
      return TYPE_UNSIGNED (type) ? umod_optab : smod_optab;

    case 141:
    case 132:
    case 155:
    case 151:
    case 136:
    case 152:
      return TYPE_UNSIGNED (type) ? udiv_optab : sdiv_optab;

    case 148:
      return ashl_optab;

    case 133:
      return TYPE_UNSIGNED (type) ? lshr_optab : ashr_optab;

    case 149:
      return rotl_optab;

    case 134:
      return rotr_optab;

    case 147:
      return TYPE_UNSIGNED (type) ? umax_optab : smax_optab;

    case 145:
      return TYPE_UNSIGNED (type) ? umin_optab : smin_optab;

    case 140:
      return vec_realign_load_optab;

    case 128:
      return TYPE_UNSIGNED (type) ? usum_widen_optab : ssum_widen_optab;

    case 153:
      return TYPE_UNSIGNED (type) ? udot_prod_optab : sdot_prod_optab;

    case 139:
      return TYPE_UNSIGNED (type) ? reduc_umax_optab : reduc_smax_optab;

    case 138:
      return TYPE_UNSIGNED (type) ? reduc_umin_optab : reduc_smin_optab;

    case 137:
      return TYPE_UNSIGNED (type) ? reduc_uplus_optab : reduc_splus_optab;

    case 130:
      return vec_shl_optab;

    case 129:
      return vec_shr_optab;

    default:
      break;
    }

  trapv = INTEGRAL_TYPE_P (type) && TYPE_OVERFLOW_TRAPS (type);
  switch (code)
    {
    case 142:
      return trapv ? addv_optab : add_optab;

    case 146:
      return trapv ? subv_optab : sub_optab;

    case 144:
      return trapv ? smulv_optab : smul_optab;

    case 143:
      return trapv ? negv_optab : neg_optab;

    case 160:
      return trapv ? absv_optab : abs_optab;

    default:
      return ((void*)0);
    }
}
