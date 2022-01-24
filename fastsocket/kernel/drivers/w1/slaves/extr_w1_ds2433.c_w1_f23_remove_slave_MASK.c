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
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct w1_slave {TYPE_1__ dev; int /*<<< orphan*/ * family_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w1_f23_bin_attr ; 

__attribute__((used)) static void FUNC2(struct w1_slave *sl)
{
#ifdef CONFIG_W1_SLAVE_DS2433_CRC
	kfree(sl->family_data);
	sl->family_data = NULL;
#endif	/* CONFIG_W1_SLAVE_DS2433_CRC */
	FUNC1(&sl->dev.kobj, &w1_f23_bin_attr);
}