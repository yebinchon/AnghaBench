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
typedef  scalar_t__ u64 ;
struct w1_slave {int /*<<< orphan*/  flags; } ;
struct w1_reg_num {scalar_t__ crc; } ;
struct w1_master {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  W1_SLAVE_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  FUNC4 (struct w1_master*,struct w1_reg_num*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct w1_slave* FUNC6 (struct w1_master*,struct w1_reg_num*) ; 

__attribute__((used)) static void FUNC7(struct w1_master *dev, u64 rn)
{
	struct w1_slave *sl;
	struct w1_reg_num *tmp;
	u64 rn_le = FUNC2(rn);

	FUNC1(&dev->refcnt);

	tmp = (struct w1_reg_num *) &rn;

	sl = FUNC6(dev, tmp);
	if (sl) {
		FUNC3(W1_SLAVE_ACTIVE, (long *)&sl->flags);
	} else {
		if (rn && tmp->crc == FUNC5((u8 *)&rn_le, 7))
			FUNC4(dev, tmp);
	}

	FUNC0(&dev->refcnt);
}