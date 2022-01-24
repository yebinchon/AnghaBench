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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 int NOTIFY_DONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  iucv_block_cpu ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  iucv_irq_cpumask ; 
 int iucv_max_pathid ; 
 scalar_t__* iucv_path_table ; 
 int FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct notifier_block *this,
			     unsigned long event, void *ptr)
{
	int i, rc;

	if (FUNC0(&iucv_irq_cpumask))
		return NOTIFY_DONE;

	FUNC1();
	FUNC4(&iucv_irq_cpumask, iucv_block_cpu, NULL, 1);
	FUNC5();
	for (i = 0; i < iucv_max_pathid; i++) {
		if (iucv_path_table[i])
			rc = FUNC3(i, NULL);
	}
	FUNC6();
	FUNC7();
	FUNC2();
	return NOTIFY_DONE;
}