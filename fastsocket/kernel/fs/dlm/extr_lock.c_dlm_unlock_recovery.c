
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_in_recovery; } ;


 int up_read (int *) ;

void dlm_unlock_recovery(struct dlm_ls *ls)
{
 up_read(&ls->ls_in_recovery);
}
