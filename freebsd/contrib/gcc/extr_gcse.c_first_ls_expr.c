
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ls_expr {int dummy; } ;


 struct ls_expr* pre_ldst_mems ;

__attribute__((used)) static inline struct ls_expr *
first_ls_expr (void)
{
  return pre_ldst_mems;
}
