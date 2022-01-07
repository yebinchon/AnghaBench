
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int is_master_copy (struct dlm_lkb*) ;

__attribute__((used)) static int purge_mstcpy_test(struct dlm_ls *ls, struct dlm_lkb *lkb)
{
 return is_master_copy(lkb);
}
