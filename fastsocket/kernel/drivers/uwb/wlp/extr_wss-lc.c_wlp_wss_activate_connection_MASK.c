#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wlp_wss {int /*<<< orphan*/  wssid; } ;
struct wlp_uuid {int dummy; } ;
struct wlp {int /*<<< orphan*/  eda; TYPE_2__* rc; } ;
struct uwb_mac_addr {scalar_t__ data; } ;
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  WLP_WSS_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wlp_uuid*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct uwb_dev_addr*,struct wlp_wss*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC3(struct wlp *wlp, struct wlp_wss *wss,
				struct uwb_dev_addr *dev_addr,
				struct wlp_uuid *wssid, u8 *tag,
				struct uwb_mac_addr *virt_addr)
{
	struct device *dev = &wlp->rc->uwb_dev.dev;
	int result = 0;

	if (!FUNC1(wssid, &wss->wssid, sizeof(*wssid))) {
		/* Update EDA cache */
		result = FUNC2(&wlp->eda, dev_addr, wss,
					     (void *) virt_addr->data, *tag,
					     WLP_WSS_CONNECTED);
		if (result < 0)
			FUNC0(dev, "WLP: Unable to update EDA cache "
				"with new connected neighbor information.\n");
	} else {
		FUNC0(dev, "WLP: Neighbor does not have matching WSSID.\n");
		result = -EINVAL;
	}
	return result;
}