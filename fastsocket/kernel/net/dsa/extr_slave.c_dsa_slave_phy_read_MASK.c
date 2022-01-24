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
struct mii_bus {struct dsa_switch* priv; } ;
struct dsa_switch {int phys_port_mask; TYPE_1__* drv; } ;
struct TYPE_2__ {int (* phy_read ) (struct dsa_switch*,int,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct dsa_switch*,int,int) ; 

__attribute__((used)) static int FUNC1(struct mii_bus *bus, int addr, int reg)
{
	struct dsa_switch *ds = bus->priv;

	if (ds->phys_port_mask & (1 << addr))
		return ds->drv->phy_read(ds, addr, reg);

	return 0xffff;
}