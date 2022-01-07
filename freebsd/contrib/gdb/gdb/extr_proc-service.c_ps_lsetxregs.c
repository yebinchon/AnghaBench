
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_err_e ;
typedef int lwpid_t ;
typedef int gdb_ps_prochandle_t ;
typedef int caddr_t ;


 int PS_OK ;

ps_err_e
ps_lsetxregs (gdb_ps_prochandle_t ph, lwpid_t lwpid, caddr_t xregset)
{

  return PS_OK;
}
