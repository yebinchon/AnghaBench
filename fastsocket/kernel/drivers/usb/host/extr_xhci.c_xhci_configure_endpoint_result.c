
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct usb_device {int dev; } ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENOSPC ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int xhci_err (struct xhci_hcd*,char*,int) ;

__attribute__((used)) static int xhci_configure_endpoint_result(struct xhci_hcd *xhci,
  struct usb_device *udev, u32 *cmd_status)
{
 int ret;

 switch (*cmd_status) {
 case 130:
  dev_warn(&udev->dev, "Not enough host controller resources "
    "for new device state.\n");
  ret = -ENOMEM;

  break;
 case 132:
 case 133:
  dev_warn(&udev->dev, "Not enough bandwidth "
    "for new device state.\n");
  ret = -ENOSPC;

  break;
 case 128:

  dev_warn(&udev->dev, "ERROR: Endpoint drop flag = 0, "
    "add flag = 1, "
    "and endpoint is not disabled.\n");
  ret = -EINVAL;
  break;
 case 131:
  dev_warn(&udev->dev, "ERROR: Incompatible device for endpoint "
    "configure command.\n");
  ret = -ENODEV;
  break;
 case 129:
  dev_dbg(&udev->dev, "Successful Endpoint Configure command\n");
  ret = 0;
  break;
 default:
  xhci_err(xhci, "ERROR: unexpected command completion "
    "code 0x%x.\n", *cmd_status);
  ret = -EINVAL;
  break;
 }
 return ret;
}
