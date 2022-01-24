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
typedef  int u8 ;
struct hdq_data {int /*<<< orphan*/  hdq_mutex; scalar_t__ init_trans; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct hdq_data*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hdq_data*) ; 

__attribute__((used)) static u8 FUNC5(void *_hdq)
{
	struct hdq_data *hdq_data = _hdq;
	u8 val = 0;
	int ret;

	ret = FUNC1(hdq_data, &val);
	if (ret) {
		ret = FUNC2(&hdq_data->hdq_mutex);
		if (ret < 0) {
			FUNC0(hdq_data->dev, "Could not acquire mutex\n");
			return -EINTR;
		}
		hdq_data->init_trans = 0;
		FUNC3(&hdq_data->hdq_mutex);
		FUNC4(hdq_data);
		return -1;
	}

	/* Write followed by a read, release the module */
	if (hdq_data->init_trans) {
		ret = FUNC2(&hdq_data->hdq_mutex);
		if (ret < 0) {
			FUNC0(hdq_data->dev, "Could not acquire mutex\n");
			return -EINTR;
		}
		hdq_data->init_trans = 0;
		FUNC3(&hdq_data->hdq_mutex);
		FUNC4(hdq_data);
	}

	return val;
}