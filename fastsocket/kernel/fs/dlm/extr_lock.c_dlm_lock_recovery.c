
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_in_recovery; } ;


 int down_read (int *) ;

__attribute__((used)) static inline void dlm_lock_recovery(struct dlm_ls *ls)
{
 down_read(&ls->ls_in_recovery);
}
