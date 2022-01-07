
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int busnum; int controller; } ;
struct usb_hcd {unsigned int irq; scalar_t__ rsrc_start; TYPE_2__* driver; TYPE_1__ self; int irq_descr; } ;
struct TYPE_4__ {char* description; int flags; scalar_t__ irq; } ;


 int HCD_MEMORY ;
 unsigned long IRQF_DISABLED ;
 unsigned long IRQF_SHARED ;
 int dev_err (int ,char*,unsigned int) ;
 int dev_info (int ,char*,...) ;
 int request_irq (unsigned int,int *,unsigned long,int ,struct usb_hcd*) ;
 int snprintf (int ,int,char*,char*,int) ;
 int usb_hcd_irq ;

__attribute__((used)) static int usb_hcd_request_irqs(struct usb_hcd *hcd,
  unsigned int irqnum, unsigned long irqflags)
{
 int retval;

 if (hcd->driver->irq) {





  if (irqflags & IRQF_SHARED)
   irqflags &= ~IRQF_DISABLED;

  snprintf(hcd->irq_descr, sizeof(hcd->irq_descr), "%s:usb%d",
    hcd->driver->description, hcd->self.busnum);
  retval = request_irq(irqnum, &usb_hcd_irq, irqflags,
    hcd->irq_descr, hcd);
  if (retval != 0) {
   dev_err(hcd->self.controller,
     "request interrupt %d failed\n",
     irqnum);
   return retval;
  }
  hcd->irq = irqnum;
  dev_info(hcd->self.controller, "irq %d, %s 0x%08llx\n", irqnum,
    (hcd->driver->flags & HCD_MEMORY) ?
     "io mem" : "io base",
     (unsigned long long)hcd->rsrc_start);
 } else {
  hcd->irq = -1;
  if (hcd->rsrc_start)
   dev_info(hcd->self.controller, "%s 0x%08llx\n",
     (hcd->driver->flags & HCD_MEMORY) ?
     "io mem" : "io base",
     (unsigned long long)hcd->rsrc_start);
 }
 return 0;
}
