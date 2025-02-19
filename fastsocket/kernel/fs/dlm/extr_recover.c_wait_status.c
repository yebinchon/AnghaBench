
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dlm_ls {scalar_t__ ls_low_nodeid; } ;


 scalar_t__ dlm_our_nodeid () ;
 int dlm_set_recover_status (struct dlm_ls*,int) ;
 int wait_status_all (struct dlm_ls*,int) ;
 int wait_status_low (struct dlm_ls*,int) ;

__attribute__((used)) static int wait_status(struct dlm_ls *ls, uint32_t status)
{
 uint32_t status_all = status << 1;
 int error;

 if (ls->ls_low_nodeid == dlm_our_nodeid()) {
  error = wait_status_all(ls, status);
  if (!error)
   dlm_set_recover_status(ls, status_all);
 } else
  error = wait_status_low(ls, status_all);

 return error;
}
