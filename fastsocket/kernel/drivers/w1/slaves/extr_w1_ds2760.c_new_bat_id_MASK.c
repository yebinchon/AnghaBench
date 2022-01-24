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

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ID_MASK ; 
 int /*<<< orphan*/  bat_idr ; 
 int /*<<< orphan*/  bat_idr_lock ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	int ret;

	while (1) {
		int id;

		ret = FUNC1(&bat_idr, GFP_KERNEL);
		if (ret == 0)
			return -ENOMEM;

		FUNC2(&bat_idr_lock);
		ret = FUNC0(&bat_idr, NULL, &id);
		FUNC3(&bat_idr_lock);

		if (ret == 0) {
			ret = id & MAX_ID_MASK;
			break;
		} else if (ret == -EAGAIN) {
			continue;
		} else {
			break;
		}
	}

	return ret;
}