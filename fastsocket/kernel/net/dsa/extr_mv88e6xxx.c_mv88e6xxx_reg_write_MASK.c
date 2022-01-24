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
typedef  int /*<<< orphan*/  u16 ;
struct mv88e6xxx_priv_state {int /*<<< orphan*/  smi_mutex; } ;
struct dsa_switch {TYPE_1__* pd; int /*<<< orphan*/  master_mii_bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  sw_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct dsa_switch *ds, int addr, int reg, u16 val)
{
	struct mv88e6xxx_priv_state *ps = (void *)(ds + 1);
	int ret;

	FUNC1(&ps->smi_mutex);
	ret = FUNC0(ds->master_mii_bus,
				    ds->pd->sw_addr, addr, reg, val);
	FUNC2(&ps->smi_mutex);

	return ret;
}