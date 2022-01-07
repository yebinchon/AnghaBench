
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usb_ctrlrequest {int bRequestType; int bRequest; void* wLength; void* wIndex; void* wValue; } ;
typedef int req ;
struct TYPE_2__ {int pids; int address; int control; } ;


 int DBGP_EPADDR (unsigned int,int ) ;
 int DBGP_GO ;
 int DBGP_MAX_PACKET ;
 int DBGP_OUT ;
 int DBGP_PID_SET (int ,int ) ;
 int USB_DIR_IN ;
 int USB_PID_DATA0 ;
 int USB_PID_SETUP ;
 void* cpu_to_le16 (int) ;
 int dbgp_bulk_read (unsigned int,int ,void*,int) ;
 int dbgp_len_update (int ,int) ;
 int dbgp_set_data (struct usb_ctrlrequest*,int) ;
 int dbgp_wait_until_done (int ) ;
 TYPE_1__* ehci_debug ;
 int readl (int *) ;
 int writel (int ,int *) ;

__attribute__((used)) static int dbgp_control_msg(unsigned devnum, int requesttype,
 int request, int value, int index, void *data, int size)
{
 u32 pids, addr, ctrl;
 struct usb_ctrlrequest req;
 int read;
 int ret;

 read = (requesttype & USB_DIR_IN) != 0;
 if (size > (read ? DBGP_MAX_PACKET:0))
  return -1;


 req.bRequestType = requesttype;
 req.bRequest = request;
 req.wValue = cpu_to_le16(value);
 req.wIndex = cpu_to_le16(index);
 req.wLength = cpu_to_le16(size);

 pids = DBGP_PID_SET(USB_PID_DATA0, USB_PID_SETUP);
 addr = DBGP_EPADDR(devnum, 0);

 ctrl = readl(&ehci_debug->control);
 ctrl = dbgp_len_update(ctrl, sizeof(req));
 ctrl |= DBGP_OUT;
 ctrl |= DBGP_GO;


 dbgp_set_data(&req, sizeof(req));
 writel(addr, &ehci_debug->address);
 writel(pids, &ehci_debug->pids);
 ret = dbgp_wait_until_done(ctrl);
 if (ret < 0)
  return ret;


 return dbgp_bulk_read(devnum, 0, data, size);
}
