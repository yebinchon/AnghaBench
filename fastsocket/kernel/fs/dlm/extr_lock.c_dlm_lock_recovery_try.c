
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_in_recovery; } ;


 int down_read_trylock (int *) ;

int dlm_lock_recovery_try(struct dlm_ls *ls)
{
 return down_read_trylock(&ls->ls_in_recovery);
}
