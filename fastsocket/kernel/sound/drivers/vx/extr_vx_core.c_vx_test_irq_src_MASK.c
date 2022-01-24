#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int* Stat; } ;
struct vx_core {int /*<<< orphan*/  lock; TYPE_1__ irq_rmh; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TEST_IT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vx_core*,TYPE_1__*) ; 

__attribute__((used)) static int FUNC4(struct vx_core *chip, unsigned int *ret)
{
	int err;

	FUNC2(&chip->irq_rmh, CMD_TEST_IT);
	FUNC0(&chip->lock);
	err = FUNC3(chip, &chip->irq_rmh);
	if (err < 0)
		*ret = 0;
	else
		*ret = chip->irq_rmh.Stat[0];
	FUNC1(&chip->lock);
	return err;
}