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
struct wlp_wss {int dummy; } ;
struct wlp {TYPE_2__* rc; } ;
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;
typedef  enum wlp_assoc_type { ____Placeholder_wlp_assoc_type } wlp_assoc_type ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;

/* Variables and functions */
 int EINVAL ; 
#define  WLP_ASSOC_C1 130 
#define  WLP_ASSOC_C3 129 
#define  WLP_ASSOC_D1 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct wlp*,struct wlp_wss*,struct uwb_dev_addr*) ; 
 int FUNC2 (struct wlp*,struct wlp_wss*,struct uwb_dev_addr*) ; 
 int FUNC3 (struct wlp*,struct wlp_wss*,struct uwb_dev_addr*) ; 

int FUNC4(struct wlp *wlp, struct wlp_wss *wss,
			 struct uwb_dev_addr *dev_addr,
			 enum wlp_assoc_type type)
{
	int result = 0;
	struct device *dev = &wlp->rc->uwb_dev.dev;
	switch (type) {
	case WLP_ASSOC_D1:
		result = FUNC3(wlp, wss, dev_addr);
		break;
	case WLP_ASSOC_C1:
		result = FUNC1(wlp, wss, dev_addr);
		break;
	case WLP_ASSOC_C3:
		result = FUNC2(wlp, wss, dev_addr);
		break;
	default:
		FUNC0(dev, "WLP: Received request to send unknown "
			"association message.\n");
		result = -EINVAL;
		break;
	}
	return result;
}