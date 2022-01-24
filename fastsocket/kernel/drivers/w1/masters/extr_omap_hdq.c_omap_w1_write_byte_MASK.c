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
typedef  int /*<<< orphan*/  u8 ;
struct hdq_data {scalar_t__ init_trans; int /*<<< orphan*/  hdq_mutex; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC1 (struct hdq_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hdq_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hdq_data*) ; 

__attribute__((used)) static void FUNC6(void *_hdq, u8 byte)
{
	struct hdq_data *hdq_data = _hdq;
	int ret;
	u8 status;

	/* First write to initialize the transfer */
	if (hdq_data->init_trans == 0)
		FUNC4(hdq_data);

	ret = FUNC2(&hdq_data->hdq_mutex);
	if (ret < 0) {
		FUNC0(hdq_data->dev, "Could not acquire mutex\n");
		return;
	}
	hdq_data->init_trans++;
	FUNC3(&hdq_data->hdq_mutex);

	ret = FUNC1(hdq_data, byte, &status);
	if (ret == 0) {
		FUNC0(hdq_data->dev, "TX failure:Ctrl status %x\n", status);
		return;
	}

	/* Second write, data transfered. Release the module */
	if (hdq_data->init_trans > 1) {
		FUNC5(hdq_data);
		ret = FUNC2(&hdq_data->hdq_mutex);
		if (ret < 0) {
			FUNC0(hdq_data->dev, "Could not acquire mutex\n");
			return;
		}
		hdq_data->init_trans = 0;
		FUNC3(&hdq_data->hdq_mutex);
	}

	return;
}