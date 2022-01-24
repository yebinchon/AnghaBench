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
struct uio_device {int minor; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,struct uio_device*,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  minor_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uio_idr ; 

__attribute__((used)) static int FUNC4(struct uio_device *idev)
{
	int retval = -ENOMEM;
	int id;

	FUNC2(&minor_lock);
	if (FUNC1(&uio_idr, GFP_KERNEL) == 0)
		goto exit;

	retval = FUNC0(&uio_idr, idev, &id);
	if (retval < 0) {
		if (retval == -EAGAIN)
			retval = -ENOMEM;
		goto exit;
	}
	idev->minor = id & MAX_ID_MASK;
exit:
	FUNC3(&minor_lock);
	return retval;
}