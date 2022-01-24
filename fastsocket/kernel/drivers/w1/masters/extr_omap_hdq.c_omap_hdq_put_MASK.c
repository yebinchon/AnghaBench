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
struct hdq_data {scalar_t__ hdq_usecount; int /*<<< orphan*/  hdq_mutex; int /*<<< orphan*/  hdq_fck; int /*<<< orphan*/  hdq_ick; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hdq_data *hdq_data)
{
	int ret = 0;

	ret = FUNC3(&hdq_data->hdq_mutex);
	if (ret < 0)
		return -EINTR;

	if (0 == hdq_data->hdq_usecount) {
		FUNC1(hdq_data->dev, "attempt to decrement use count"
			"when it is zero");
		ret = -EINVAL;
	} else {
		hdq_data->hdq_usecount--;
		FUNC2(THIS_MODULE);
		if (0 == hdq_data->hdq_usecount) {
			FUNC0(hdq_data->hdq_ick);
			FUNC0(hdq_data->hdq_fck);
		}
	}
	FUNC4(&hdq_data->hdq_mutex);

	return ret;
}