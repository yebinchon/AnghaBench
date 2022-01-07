
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int dummy; } ;


 int DLM_RS_NODES ;
 int wait_status (struct dlm_ls*,int ) ;

int dlm_recover_members_wait(struct dlm_ls *ls)
{
 return wait_status(ls, DLM_RS_NODES);
}
