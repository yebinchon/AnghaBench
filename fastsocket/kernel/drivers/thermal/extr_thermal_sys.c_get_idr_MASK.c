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
struct mutex {int dummy; } ;
struct idr {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_ID_MASK ; 
 int FUNC0 (struct idr*,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC1 (struct idr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct idr *idr, struct mutex *lock, int *id)
{
	int err;

      again:
	if (FUNC4(FUNC1(idr, GFP_KERNEL) == 0))
		return -ENOMEM;

	if (lock)
		FUNC2(lock);
	err = FUNC0(idr, NULL, id);
	if (lock)
		FUNC3(lock);
	if (FUNC4(err == -EAGAIN))
		goto again;
	else if (FUNC4(err))
		return err;

	*id = *id & MAX_ID_MASK;
	return 0;
}