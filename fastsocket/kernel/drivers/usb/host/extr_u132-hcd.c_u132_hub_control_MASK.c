#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct usb_hub_descriptor {int dummy; } ;
struct usb_hcd {int dummy; } ;
struct u132 {int going; int /*<<< orphan*/  sw_lock; TYPE_1__* platform_dev; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  C_HUB_LOCAL_POWER 136 
#define  C_HUB_OVER_CURRENT 135 
#define  ClearHubFeature 134 
#define  ClearPortFeature 133 
 int ENODEV ; 
 int EPIPE ; 
 int ESHUTDOWN ; 
#define  GetHubDescriptor 132 
#define  GetHubStatus 131 
#define  GetPortStatus 130 
#define  SetHubFeature 129 
#define  SetPortFeature 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 struct u132* FUNC1 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct u132*) ; 
 int FUNC5 (struct u132*,int,int) ; 
 int FUNC6 (struct u132*,struct usb_hub_descriptor*) ; 
 int FUNC7 (struct u132*,int /*<<< orphan*/ *,int) ; 
 int FUNC8 (struct u132*,int,int) ; 
 int FUNC9 (struct u132*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct usb_hcd *hcd, u16 typeReq, u16 wValue,
	u16 wIndex, char *buf, u16 wLength)
{
	struct u132 *u132 = FUNC1(hcd);
	if (u132->going > 1) {
		FUNC0(&u132->platform_dev->dev, "device has been removed %d\n"
			, u132->going);
		return -ENODEV;
	} else if (u132->going > 0) {
		FUNC0(&u132->platform_dev->dev, "device is being removed\n");
		return -ESHUTDOWN;
	} else {
		int retval = 0;
		FUNC2(&u132->sw_lock);
		switch (typeReq) {
		case ClearHubFeature:
			switch (wValue) {
			case C_HUB_OVER_CURRENT:
			case C_HUB_LOCAL_POWER:
				break;
			default:
				goto stall;
			}
			break;
		case SetHubFeature:
			switch (wValue) {
			case C_HUB_OVER_CURRENT:
			case C_HUB_LOCAL_POWER:
				break;
			default:
				goto stall;
			}
			break;
		case ClearPortFeature:{
				retval = FUNC5(u132,
					wValue, wIndex);
				if (retval)
					goto error;
				break;
			}
		case GetHubDescriptor:{
				retval = FUNC6(u132,
					(struct usb_hub_descriptor *)buf);
				if (retval)
					goto error;
				break;
			}
		case GetHubStatus:{
				retval = FUNC9(u132,
					(__le32 *) buf);
				if (retval)
					goto error;
				break;
			}
		case GetPortStatus:{
				retval = FUNC7(u132,
					(__le32 *) buf, wIndex);
				if (retval)
					goto error;
				break;
			}
		case SetPortFeature:{
				retval = FUNC8(u132,
					wValue, wIndex);
				if (retval)
					goto error;
				break;
			}
		default:
			goto stall;
		error:
			FUNC4(u132);
			u132->going = 1;
			break;
		stall:
			retval = -EPIPE;
			break;
		}
		FUNC3(&u132->sw_lock);
		return retval;
	}
}