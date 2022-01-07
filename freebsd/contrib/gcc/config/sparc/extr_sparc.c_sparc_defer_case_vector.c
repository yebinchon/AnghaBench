
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int VOIDmode ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int sparc_addr_diff_list ;
 int sparc_addr_list ;

void
sparc_defer_case_vector (rtx lab, rtx vec, int diff)
{
  vec = gen_rtx_EXPR_LIST (VOIDmode, lab, vec);
  if (diff)
    sparc_addr_diff_list
      = gen_rtx_EXPR_LIST (VOIDmode, vec, sparc_addr_diff_list);
  else
    sparc_addr_list = gen_rtx_EXPR_LIST (VOIDmode, vec, sparc_addr_list);
}
