
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_12__ {TYPE_9__* controller; } ;
struct usb_hcd {TYPE_3__ self; int state; int product_desc; } ;
struct pci_dev {int dummy; } ;
struct TYPE_11__ {unsigned int complete; char* unlink; int lost_iaa; int reclaim; int error; int normal; } ;
struct ehci_hcd {int reclaim; int lock; TYPE_2__ stats; TYPE_1__* debug; int hcs_params; TYPE_6__* regs; TYPE_5__* caps; } ;
struct debug_buffer {char* output_buf; unsigned int alloc_size; int bus; } ;
typedef unsigned int ssize_t ;
struct TYPE_18__ {TYPE_7__* bus; } ;
struct TYPE_13__ {int controller; } ;
struct TYPE_17__ {TYPE_4__ self; } ;
struct TYPE_16__ {int name; } ;
struct TYPE_15__ {int * port_status; int frame_index; int intr_enable; int command; int status; } ;
struct TYPE_14__ {int hcc_params; int hcs_params; int hc_capbase; } ;
struct TYPE_10__ {int control; } ;


 int HCC_EXT_CAPS (unsigned int) ;
 int HCD_HW_ACCESSIBLE (struct usb_hcd*) ;
 unsigned int HCS_DEBUG_PORT (int ) ;
 unsigned int HCS_N_PORTS (int ) ;
 unsigned int HC_VERSION (unsigned int) ;
 struct usb_hcd* bus_to_hcd (int ) ;
 unsigned int dbg_command_buf (char*,int,char*,unsigned int) ;
 unsigned int dbg_intr_buf (char*,int,char*,unsigned int) ;
 unsigned int dbg_port_buf (char*,int,char*,unsigned int,unsigned int) ;
 unsigned int dbg_status_buf (char*,int,char*,unsigned int) ;
 int dev_name (TYPE_9__*) ;
 unsigned int ehci_readl (struct ehci_hcd*,int *) ;
 TYPE_8__* ehci_to_hcd (struct ehci_hcd*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 TYPE_7__ pci_bus_type ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 unsigned int scnprintf (char*,unsigned int,char*,unsigned int,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static ssize_t fill_registers_buffer(struct debug_buffer *buf)
{
 struct usb_hcd *hcd;
 struct ehci_hcd *ehci;
 unsigned long flags;
 unsigned temp, size, i;
 char *next, scratch [80];
 static char fmt [] = "%*s\n";
 static char label [] = "";

 hcd = bus_to_hcd(buf->bus);
 ehci = hcd_to_ehci (hcd);
 next = buf->output_buf;
 size = buf->alloc_size;

 spin_lock_irqsave (&ehci->lock, flags);

 if (!HCD_HW_ACCESSIBLE(hcd)) {
  size = scnprintf (next, size,
   "bus %s, device %s\n"
   "%s\n"
   "SUSPENDED (no register access)\n",
   hcd->self.controller->bus->name,
   dev_name(hcd->self.controller),
   hcd->product_desc);
  goto done;
 }


 i = HC_VERSION(ehci_readl(ehci, &ehci->caps->hc_capbase));
 temp = scnprintf (next, size,
  "bus %s, device %s\n"
  "%s\n"
  "EHCI %x.%02x, hcd state %d\n",
  hcd->self.controller->bus->name,
  dev_name(hcd->self.controller),
  hcd->product_desc,
  i >> 8, i & 0x0ff, hcd->state);
 size -= temp;
 next += temp;
 i = ehci_readl(ehci, &ehci->caps->hcs_params);
 temp = scnprintf (next, size, "structural params 0x%08x\n", i);
 size -= temp;
 next += temp;

 i = ehci_readl(ehci, &ehci->caps->hcc_params);
 temp = scnprintf (next, size, "capability params 0x%08x\n", i);
 size -= temp;
 next += temp;


 temp = dbg_status_buf (scratch, sizeof scratch, label,
   ehci_readl(ehci, &ehci->regs->status));
 temp = scnprintf (next, size, fmt, temp, scratch);
 size -= temp;
 next += temp;

 temp = dbg_command_buf (scratch, sizeof scratch, label,
   ehci_readl(ehci, &ehci->regs->command));
 temp = scnprintf (next, size, fmt, temp, scratch);
 size -= temp;
 next += temp;

 temp = dbg_intr_buf (scratch, sizeof scratch, label,
   ehci_readl(ehci, &ehci->regs->intr_enable));
 temp = scnprintf (next, size, fmt, temp, scratch);
 size -= temp;
 next += temp;

 temp = scnprintf (next, size, "uframe %04x\n",
   ehci_readl(ehci, &ehci->regs->frame_index));
 size -= temp;
 next += temp;

 for (i = 1; i <= HCS_N_PORTS (ehci->hcs_params); i++) {
  temp = dbg_port_buf (scratch, sizeof scratch, label, i,
    ehci_readl(ehci,
     &ehci->regs->port_status[i - 1]));
  temp = scnprintf (next, size, fmt, temp, scratch);
  size -= temp;
  next += temp;
  if (i == HCS_DEBUG_PORT(ehci->hcs_params) && ehci->debug) {
   temp = scnprintf (next, size,
     "    debug control %08x\n",
     ehci_readl(ehci,
      &ehci->debug->control));
   size -= temp;
   next += temp;
  }
 }

 if (ehci->reclaim) {
  temp = scnprintf(next, size, "reclaim qh %p\n", ehci->reclaim);
  size -= temp;
  next += temp;
 }
done:
 spin_unlock_irqrestore (&ehci->lock, flags);

 return buf->alloc_size - size;
}
