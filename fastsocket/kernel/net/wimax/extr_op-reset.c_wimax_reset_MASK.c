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
struct wimax_dev {int state; int (* op_reset ) (struct wimax_dev*) ;int /*<<< orphan*/  net_dev; int /*<<< orphan*/  mutex_reset; int /*<<< orphan*/  mutex; } ;
struct device {int dummy; } ;
typedef  enum wimax_st { ____Placeholder_wimax_st } wimax_st ;

/* Variables and functions */
 int EINVAL ; 
 int WIMAX_ST_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct wimax_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct wimax_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct wimax_dev*) ; 
 struct device* FUNC8 (struct wimax_dev*) ; 

int FUNC9(struct wimax_dev *wimax_dev)
{
	int result = -EINVAL;
	struct device *dev = FUNC8(wimax_dev);
	enum wimax_st state;

	FUNC4();
	FUNC1(3, dev, "(wimax_dev %p)\n", wimax_dev);
	FUNC5(&wimax_dev->mutex);
	FUNC2(wimax_dev->net_dev);
	state = wimax_dev->state;
	FUNC6(&wimax_dev->mutex);

	if (state >= WIMAX_ST_DOWN) {
		FUNC5(&wimax_dev->mutex_reset);
		result = wimax_dev->op_reset(wimax_dev);
		FUNC6(&wimax_dev->mutex_reset);
	}
	FUNC3(wimax_dev->net_dev);

	FUNC0(3, dev, "(wimax_dev %p) = %d\n", wimax_dev, result);
	return result;
}