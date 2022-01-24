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
struct uwb_dev_addr {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 struct uwb_rc* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  find_rc_dev ; 
 int /*<<< orphan*/  uwb_rc_class ; 

struct uwb_rc *FUNC2(const struct uwb_dev_addr *addr)
{
	struct device *dev;
	struct uwb_rc *rc = NULL;

	dev = FUNC0(&uwb_rc_class, NULL, (void *)addr,
				find_rc_dev);
	if (dev)
		rc = FUNC1(dev);

	return rc;
}