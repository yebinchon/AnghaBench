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
struct uwb_rc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct uwb_rc*,int /*<<< orphan*/ ) ; 
 struct uwb_rc* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  find_rc_try_get ; 
 int /*<<< orphan*/  uwb_rc_class ; 

struct uwb_rc *FUNC3(struct uwb_rc *target_rc)
{
	struct device *dev;
	struct uwb_rc *rc = NULL;

	dev = FUNC1(&uwb_rc_class, NULL, target_rc,
				find_rc_try_get);
	if (dev) {
		rc = FUNC2(dev);
		FUNC0(rc);
	}
	return rc;
}