#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct t10_alua_lu_gp_member {int /*<<< orphan*/  lu_gp_mem_lock; } ;
struct se_device {TYPE_1__* transport; TYPE_2__* se_hba; } ;
struct TYPE_4__ {int hba_flags; } ;
struct TYPE_3__ {scalar_t__ transport_type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int HBA_FLAGS_INTERNAL_USE ; 
 scalar_t__ FUNC0 (struct t10_alua_lu_gp_member*) ; 
 int FUNC1 (struct t10_alua_lu_gp_member*) ; 
 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ; 
 int /*<<< orphan*/  FUNC2 (struct t10_alua_lu_gp_member*,int /*<<< orphan*/ ) ; 
 struct t10_alua_lu_gp_member* FUNC3 (struct se_device*) ; 
 int /*<<< orphan*/  default_lu_gp ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct se_device *dev)
{
	if (dev->transport->transport_type != TRANSPORT_PLUGIN_PHBA_PDEV &&
	    !(dev->se_hba->hba_flags & HBA_FLAGS_INTERNAL_USE)) {
		struct t10_alua_lu_gp_member *lu_gp_mem;

		/*
		 * Associate this struct se_device with the default ALUA
		 * LUN Group.
		 */
		lu_gp_mem = FUNC3(dev);
		if (FUNC0(lu_gp_mem))
			return FUNC1(lu_gp_mem);

		FUNC5(&lu_gp_mem->lu_gp_mem_lock);
		FUNC2(lu_gp_mem,
				default_lu_gp);
		FUNC6(&lu_gp_mem->lu_gp_mem_lock);

		FUNC4("%s: Adding to default ALUA LU Group:"
			" core/alua/lu_gps/default_lu_gp\n",
			dev->transport->name);
	}

	return 0;
}