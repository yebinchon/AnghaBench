
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int pids; int address; int control; } ;


 int DBGP_GO ;
 int DBGP_OUT ;
 int USB_PID_OUT ;
 int dbgp_len_update (int ,int) ;
 int dbgp_pid_update (int ,int ) ;
 int dbgp_set_data (char const*,int) ;
 int dbgp_wait_until_done (int ) ;
 TYPE_1__* ehci_debug ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static int dbgp_out(u32 addr, const char *bytes, int size)
{
 u32 pids, ctrl;

 pids = readl(&ehci_debug->pids);
 pids = dbgp_pid_update(pids, USB_PID_OUT);

 ctrl = readl(&ehci_debug->control);
 ctrl = dbgp_len_update(ctrl, size);
 ctrl |= DBGP_OUT;
 ctrl |= DBGP_GO;

 dbgp_set_data(bytes, size);
 writel(addr, &ehci_debug->address);
 writel(pids, &ehci_debug->pids);
 return dbgp_wait_until_done(ctrl);
}
