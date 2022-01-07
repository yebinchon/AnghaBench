
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int control; } ;


 int DBGP_DONE ;
 int DBGP_ERRCODE (int) ;
 int DBGP_ERROR ;
 int DBGP_LEN (int) ;
 int DBGP_TIMEOUT ;
 TYPE_1__* ehci_debug ;
 int readl (int *) ;
 int udelay (int) ;
 int writel (int,int *) ;

__attribute__((used)) static int dbgp_wait_until_complete(void)
{
 u32 ctrl;
 int loop = DBGP_TIMEOUT;

 do {
  ctrl = readl(&ehci_debug->control);

  if (ctrl & DBGP_DONE)
   break;
  udelay(1);
 } while (--loop > 0);

 if (!loop)
  return -DBGP_TIMEOUT;





 writel(ctrl | DBGP_DONE, &ehci_debug->control);
 return (ctrl & DBGP_ERROR) ? -DBGP_ERRCODE(ctrl) : DBGP_LEN(ctrl);
}
