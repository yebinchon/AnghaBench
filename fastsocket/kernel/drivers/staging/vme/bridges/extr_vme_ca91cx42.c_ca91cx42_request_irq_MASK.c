#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {scalar_t__ base; TYPE_2__* irq; } ;
struct TYPE_5__ {TYPE_1__* callback; int /*<<< orphan*/  count; } ;
struct TYPE_4__ {void (* func ) (int,int,void*) ;void* priv_data; } ;

/* Variables and functions */
 int /*<<< orphan*/ * CA91CX42_LINT_VIRQ ; 
 int EBUSY ; 
 scalar_t__ LINT_EN ; 
 TYPE_3__* ca91cx42_bridge ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  vme_irq ; 

int FUNC5(int level, int statid,
	void (*callback)(int level, int vector, void *priv_data),
	void *priv_data)
{
	u32 tmp;

	FUNC2(&(vme_irq));

	if (ca91cx42_bridge->irq[level - 1].callback[statid].func) {
		FUNC3(&(vme_irq));
		FUNC4("VME Interrupt already taken\n");
		return -EBUSY;
	}


	ca91cx42_bridge->irq[level - 1].count++;
	ca91cx42_bridge->irq[level - 1].callback[statid].priv_data = priv_data;
	ca91cx42_bridge->irq[level - 1].callback[statid].func = callback;

	/* Enable IRQ level */
	tmp = FUNC0(ca91cx42_bridge->base + LINT_EN);
	tmp |= CA91CX42_LINT_VIRQ[level];
	FUNC1(tmp, ca91cx42_bridge->base + LINT_EN);

	FUNC3(&(vme_irq));

	return 0;
}