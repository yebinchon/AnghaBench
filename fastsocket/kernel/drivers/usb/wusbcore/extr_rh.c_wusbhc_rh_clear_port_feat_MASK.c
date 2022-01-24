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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct wusbhc {scalar_t__ ports_max; int /*<<< orphan*/  mutex; struct device* dev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  change; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSYS ; 
 int EPIPE ; 
#define  USB_PORT_FEAT_C_CONNECTION 135 
#define  USB_PORT_FEAT_C_ENABLE 134 
#define  USB_PORT_FEAT_C_OVER_CURRENT 133 
#define  USB_PORT_FEAT_C_RESET 132 
#define  USB_PORT_FEAT_C_SUSPEND 131 
#define  USB_PORT_FEAT_ENABLE 130 
#define  USB_PORT_FEAT_POWER 129 
#define  USB_PORT_FEAT_SUSPEND 128 
 int /*<<< orphan*/  USB_PORT_STAT_C_CONNECTION ; 
 int /*<<< orphan*/  USB_PORT_STAT_C_ENABLE ; 
 int /*<<< orphan*/  USB_PORT_STAT_C_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct wusbhc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct wusbhc*,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct wusbhc *wusbhc, u16 feature,
				     u8 selector, u8 port_idx)
{
	int result = 0;
	struct device *dev = wusbhc->dev;

	if (port_idx > wusbhc->ports_max)
		return -EINVAL;

	FUNC2(&wusbhc->mutex);
	switch (feature) {
	case USB_PORT_FEAT_POWER:	/* fake port always on */
		/* According to USB2.0[11.24.2.7.1.4], no need to implement? */
	case USB_PORT_FEAT_C_OVER_CURRENT:
		break;
	case USB_PORT_FEAT_C_RESET:
		FUNC4(wusbhc, port_idx)->change &= ~USB_PORT_STAT_C_RESET;
		break;
	case USB_PORT_FEAT_C_CONNECTION:
		FUNC4(wusbhc, port_idx)->change &= ~USB_PORT_STAT_C_CONNECTION;
		break;
	case USB_PORT_FEAT_ENABLE:
		FUNC0(wusbhc, port_idx);
		break;
	case USB_PORT_FEAT_C_ENABLE:
		FUNC4(wusbhc, port_idx)->change &= ~USB_PORT_STAT_C_ENABLE;
		break;
	case USB_PORT_FEAT_SUSPEND:
	case USB_PORT_FEAT_C_SUSPEND:
		FUNC1(dev, "(port_idx %d) Clear feat %d/%d UNIMPLEMENTED\n",
			port_idx, feature, selector);
		result = -ENOSYS;
		break;
	default:
		FUNC1(dev, "(port_idx %d) Clear feat %d/%d UNKNOWN\n",
			port_idx, feature, selector);
		result = -EPIPE;
		break;
	}
	FUNC3(&wusbhc->mutex);

	return result;
}