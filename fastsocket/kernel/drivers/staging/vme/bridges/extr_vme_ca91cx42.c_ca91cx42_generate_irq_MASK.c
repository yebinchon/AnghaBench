#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ STATID ; 
 scalar_t__ VINT_EN ; 
 TYPE_1__* ca91cx42_bridge ; 
 int /*<<< orphan*/  iack_queue ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vme_int ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(int level, int statid)
{
	u32 tmp;

	/* Universe can only generate even vectors */
	if (statid & 1)
		return -EINVAL;

	FUNC2(&(vme_int));

	tmp = FUNC0(ca91cx42_bridge->base + VINT_EN);

	/* Set Status/ID */
	FUNC1(statid << 24, ca91cx42_bridge->base + STATID);

	/* Assert VMEbus IRQ */
	tmp = tmp | (1 << (level + 24));
	FUNC1(tmp, ca91cx42_bridge->base + VINT_EN);

	/* Wait for IACK */
	FUNC4(iack_queue, 0);

	/* Return interrupt to low state */
	tmp = FUNC0(ca91cx42_bridge->base + VINT_EN);
	tmp = tmp & ~(1 << (level + 24));
	FUNC1(tmp, ca91cx42_bridge->base + VINT_EN);

	FUNC3(&(vme_int));

	return 0;
}