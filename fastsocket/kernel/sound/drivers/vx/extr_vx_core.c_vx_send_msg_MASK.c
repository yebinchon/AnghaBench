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
struct vx_rmh {int dummy; } ;
struct vx_core {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct vx_core*,struct vx_rmh*) ; 

int FUNC3(struct vx_core *chip, struct vx_rmh *rmh)
{
	unsigned long flags;
	int err;

	FUNC0(&chip->lock, flags);
	err = FUNC2(chip, rmh);
	FUNC1(&chip->lock, flags);
	return err;
}