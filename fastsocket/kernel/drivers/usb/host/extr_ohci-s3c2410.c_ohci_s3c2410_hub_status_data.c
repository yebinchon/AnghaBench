
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct s3c2410_hcd_port {int oc_changed; int flags; } ;
struct s3c2410_hcd_info {struct s3c2410_hcd_port* port; } ;


 int S3C_HCDFLG_USED ;
 int dev_dbg (int ,char*,int) ;
 int ohci_hub_status_data (struct usb_hcd*,char*) ;
 struct s3c2410_hcd_info* to_s3c2410_info (struct usb_hcd*) ;

__attribute__((used)) static int
ohci_s3c2410_hub_status_data (struct usb_hcd *hcd, char *buf)
{
 struct s3c2410_hcd_info *info = to_s3c2410_info(hcd);
 struct s3c2410_hcd_port *port;
 int orig;
 int portno;

 orig = ohci_hub_status_data (hcd, buf);

 if (info == ((void*)0))
  return orig;

 port = &info->port[0];



 for (portno = 0; portno < 2; port++, portno++) {
  if (port->oc_changed == 1 &&
      port->flags & S3C_HCDFLG_USED) {
   dev_dbg(hcd->self.controller,
    "oc change on port %d\n", portno);

   if (orig < 1)
    orig = 1;

   buf[0] |= 1<<(portno+1);
  }
 }

 return orig;
}
