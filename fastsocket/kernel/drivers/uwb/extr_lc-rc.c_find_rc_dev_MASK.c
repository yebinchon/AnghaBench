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
struct TYPE_2__ {int /*<<< orphan*/  dev_addr; } ;
struct uwb_rc {TYPE_1__ uwb_dev; } ;
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct uwb_rc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct uwb_dev_addr*) ; 
 struct uwb_rc* FUNC3 (struct uwb_rc*) ; 

__attribute__((used)) static int FUNC4(struct device *dev, void *data)
{
	struct uwb_dev_addr *addr = data;
	struct uwb_rc *rc = FUNC1(dev);

	if (rc == NULL) {
		FUNC0(1);
		return 0;
	}
	if (!FUNC2(&rc->uwb_dev.dev_addr, addr)) {
		rc = FUNC3(rc);
		return 1;
	}
	return 0;
}