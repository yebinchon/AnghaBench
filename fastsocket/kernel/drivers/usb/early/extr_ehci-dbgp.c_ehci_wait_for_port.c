
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int status; } ;


 int ENOTCONN ;
 int STS_PCD ;
 int dbgp_mdelay (int) ;
 TYPE_1__* ehci_regs ;
 int ehci_reset_port (int) ;
 int readl (int *) ;

__attribute__((used)) static int ehci_wait_for_port(int port)
{
 u32 status;
 int ret, reps;

 for (reps = 0; reps < 300; reps++) {
  status = readl(&ehci_regs->status);
  if (status & STS_PCD)
   break;
  dbgp_mdelay(1);
 }
 ret = ehci_reset_port(port);
 if (ret == 0)
  return 0;
 return -ENOTCONN;
}
