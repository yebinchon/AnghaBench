
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_virt_device {int out_ctx; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct usb_device {size_t slot_id; int dev; } ;
 int EINVAL ;
 int ENODEV ;
 int dev_dbg (int *,char*) ;
 int dev_warn (int *,char*) ;
 int xhci_dbg_ctx (struct xhci_hcd*,int ,int) ;
 int xhci_err (struct xhci_hcd*,char*,int) ;

__attribute__((used)) static int xhci_evaluate_context_result(struct xhci_hcd *xhci,
  struct usb_device *udev, u32 *cmd_status)
{
 int ret;
 struct xhci_virt_device *virt_dev = xhci->devs[udev->slot_id];

 switch (*cmd_status) {
 case 130:
  dev_warn(&udev->dev, "WARN: xHCI driver setup invalid evaluate "
    "context command.\n");
  ret = -EINVAL;
  break;
 case 131:
  dev_warn(&udev->dev, "WARN: slot not enabled for"
    "evaluate context command.\n");
  ret = -EINVAL;
  break;
 case 133:
  dev_warn(&udev->dev, "WARN: invalid context state for "
    "evaluate context command.\n");
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 1);
  ret = -EINVAL;
  break;
 case 132:
  dev_warn(&udev->dev, "ERROR: Incompatible device for evaluate "
    "context command.\n");
  ret = -ENODEV;
  break;
 case 129:

  dev_warn(&udev->dev, "WARN: Max Exit Latency too large\n");
  ret = -EINVAL;
  break;
 case 128:
  dev_dbg(&udev->dev, "Successful evaluate context command\n");
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
