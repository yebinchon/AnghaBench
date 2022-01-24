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
struct go7007 {int i2c_adapter_online; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct go7007*) ; 
 int FUNC1 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct go7007 *go, int init_i2c)
{
	int ret;

	FUNC2(&go->hw_lock);
	ret = FUNC1(go);
	FUNC3(&go->hw_lock);
	if (ret < 0)
		return -1;
	if (!init_i2c)
		return 0;
	if (FUNC0(go) < 0)
		return -1;
	go->i2c_adapter_online = 1;
	return 0;
}