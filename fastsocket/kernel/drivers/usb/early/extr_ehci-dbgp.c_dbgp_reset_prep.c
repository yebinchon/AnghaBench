
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int index; int flags; } ;
struct TYPE_3__ {int control; } ;


 int CON_BOOT ;
 int DBGP_CLAIM ;
 int DBGP_ENABLED ;
 int dbgp_not_safe ;
 TYPE_2__ early_dbgp_console ;
 TYPE_1__* ehci_debug ;
 int readl (int *) ;
 int writel (int,int *) ;

int dbgp_reset_prep(void)
{
 u32 ctrl;

 dbgp_not_safe = 1;
 if (!ehci_debug)
  return 0;

 if (early_dbgp_console.index != -1 &&
  !(early_dbgp_console.flags & CON_BOOT))
  return 1;



 ctrl = readl(&ehci_debug->control);
 if (ctrl & DBGP_ENABLED) {
  ctrl &= ~(DBGP_CLAIM);
  writel(ctrl, &ehci_debug->control);
 }
 return 0;
}
