
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ps_err_e ;
typedef int paddr_t ;
typedef scalar_t__ gdb_ps_write_buf_t ;
typedef int gdb_ps_size_t ;
typedef int gdb_ps_prochandle_t ;


 int ps_xfer_memory (int ,int ,char*,int ,int) ;

ps_err_e
ps_ptwrite (gdb_ps_prochandle_t ph, paddr_t addr,
     gdb_ps_write_buf_t buf, gdb_ps_size_t size)
{
  return ps_xfer_memory (ph, addr, (char *) buf, size, 1);
}
