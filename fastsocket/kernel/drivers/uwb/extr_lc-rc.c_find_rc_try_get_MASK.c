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
struct uwb_rc {scalar_t__ ready; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct uwb_rc* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *dev, void *data)
{
	struct uwb_rc *target_rc = data;
	struct uwb_rc *rc = FUNC1(dev);

	if (rc == NULL) {
		FUNC0(1);
		return 0;
	}
	if (rc == target_rc) {
		if (rc->ready == 0)
			return 0;
		else
			return 1;
	}
	return 0;
}