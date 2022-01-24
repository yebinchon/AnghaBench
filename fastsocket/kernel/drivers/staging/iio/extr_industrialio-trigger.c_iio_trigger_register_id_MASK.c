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
struct iio_trigger {int id; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ID_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iio_trigger_idr ; 
 int /*<<< orphan*/  iio_trigger_idr_lock ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct iio_trigger *trig_info)
{
	int ret = 0;

idr_again:
	if (FUNC5(FUNC1(&iio_trigger_idr, GFP_KERNEL) == 0))
		return -ENOMEM;

	FUNC3(&iio_trigger_idr_lock);
	ret = FUNC0(&iio_trigger_idr, NULL, &trig_info->id);
	FUNC4(&iio_trigger_idr_lock);
	if (FUNC5(ret == -EAGAIN))
		goto idr_again;
	else if (FUNC2(!ret))
		trig_info->id = trig_info->id & MAX_ID_MASK;

	return ret;
}