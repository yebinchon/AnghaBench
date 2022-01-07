
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int size; int addr; } ;
typedef TYPE_1__ procfs_break ;
typedef int brk ;
typedef int CORE_ADDR ;


 int DCMD_PROC_BREAK ;
 scalar_t__ EOK ;
 int ctl_fd ;
 scalar_t__ devctl (int ,int ,TYPE_1__*,int,int ) ;
 scalar_t__ errno ;

__attribute__((used)) static int
procfs_breakpoint (CORE_ADDR addr, int type, int size)
{
  procfs_break brk;

  brk.type = type;
  brk.addr = addr;
  brk.size = size;
  errno = devctl (ctl_fd, DCMD_PROC_BREAK, &brk, sizeof (brk), 0);
  if (errno != EOK)
    return 1;
  return 0;
}
