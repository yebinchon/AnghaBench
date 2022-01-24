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
struct go7007 {int /*<<< orphan*/  hw_lock; int /*<<< orphan*/  spinlock; scalar_t__ streaming; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC1 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC2 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct go7007 *go)
{
	int retval = -EINVAL;
	unsigned long flags;

	FUNC3(&go->hw_lock);
	if (go->streaming) {
		go->streaming = 0;
		FUNC2(go);
		FUNC5(&go->spinlock, flags);
		FUNC0(go);
		FUNC6(&go->spinlock, flags);
		FUNC1(go);
		retval = 0;
	}
	FUNC4(&go->hw_lock);
	return 0;
}