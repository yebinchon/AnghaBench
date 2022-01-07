
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_prochandle {int pid; } ;
struct cleanup {int dummy; } ;
typedef int ps_err_e ;
typedef int paddr_t ;


 int PS_ERR ;
 int PS_OK ;
 int do_cleanups (struct cleanup*) ;
 int inferior_ptid ;
 int pid_to_ptid (int ) ;
 struct cleanup* save_inferior_ptid () ;
 int target_read_memory (int ,char*,size_t) ;
 int target_write_memory (int ,char*,size_t) ;

__attribute__((used)) static ps_err_e
ps_xfer_memory (const struct ps_prochandle *ph, paddr_t addr,
  char *buf, size_t len, int write)
{
  struct cleanup *old_chain = save_inferior_ptid ();
  int ret;

  inferior_ptid = pid_to_ptid (ph->pid);

  if (write)
    ret = target_write_memory (addr, buf, len);
  else
    ret = target_read_memory (addr, buf, len);

  do_cleanups (old_chain);

  return (ret == 0 ? PS_OK : PS_ERR);
}
