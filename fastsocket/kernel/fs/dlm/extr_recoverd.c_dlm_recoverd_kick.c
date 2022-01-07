
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_recoverd_task; int ls_flags; } ;


 int LSFL_WORK ;
 int set_bit (int ,int *) ;
 int wake_up_process (int ) ;

void dlm_recoverd_kick(struct dlm_ls *ls)
{
 set_bit(LSFL_WORK, &ls->ls_flags);
 wake_up_process(ls->ls_recoverd_task);
}
