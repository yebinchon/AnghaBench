#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct xhci_virt_device {int /*<<< orphan*/  out_ctx; } ;
struct xhci_hcd {struct xhci_virt_device** devs; } ;
struct usb_device {size_t slot_id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  COMP_CTX_STATE 133 
#define  COMP_DEV_ERR 132 
#define  COMP_EBADSLT 131 
#define  COMP_EINVAL 130 
#define  COMP_MEL_ERR 129 
#define  COMP_SUCCESS 128 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_hcd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_hcd*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct xhci_hcd *xhci,
		struct usb_device *udev, u32 *cmd_status)
{
	int ret;
	struct xhci_virt_device *virt_dev = xhci->devs[udev->slot_id];

	switch (*cmd_status) {
	case COMP_EINVAL:
		FUNC1(&udev->dev, "WARN: xHCI driver setup invalid evaluate "
				"context command.\n");
		ret = -EINVAL;
		break;
	case COMP_EBADSLT:
		FUNC1(&udev->dev, "WARN: slot not enabled for"
				"evaluate context command.\n");
		ret = -EINVAL;
		break;
	case COMP_CTX_STATE:
		FUNC1(&udev->dev, "WARN: invalid context state for "
				"evaluate context command.\n");
		FUNC2(xhci, virt_dev->out_ctx, 1);
		ret = -EINVAL;
		break;
	case COMP_DEV_ERR:
		FUNC1(&udev->dev, "ERROR: Incompatible device for evaluate "
				"context command.\n");
		ret = -ENODEV;
		break;
	case COMP_MEL_ERR:
		/* Max Exit Latency too large error */
		FUNC1(&udev->dev, "WARN: Max Exit Latency too large\n");
		ret = -EINVAL;
		break;
	case COMP_SUCCESS:
		FUNC0(&udev->dev, "Successful evaluate context command\n");
		ret = 0;
		break;
	default:
		FUNC3(xhci, "ERROR: unexpected command completion "
				"code 0x%x.\n", *cmd_status);
		ret = -EINVAL;
		break;
	}
	return ret;
}