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
struct wdm_device {TYPE_1__* intf; int /*<<< orphan*/  validity; scalar_t__ count; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct wdm_device *desc)
{
	int rv = 0;

	if (desc->count) {
		rv = FUNC1(desc->validity, GFP_NOIO);
		if (rv < 0)
			FUNC0(&desc->intf->dev,
				"Error resume submitting int urb - %d\n", rv);
	}
	return rv;
}