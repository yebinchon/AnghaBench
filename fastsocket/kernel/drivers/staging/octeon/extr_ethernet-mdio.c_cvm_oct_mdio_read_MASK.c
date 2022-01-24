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
struct TYPE_3__ {int dat; scalar_t__ val; scalar_t__ pending; } ;
union cvmx_smix_rd_dat {TYPE_1__ s; int /*<<< orphan*/  u64; } ;
struct TYPE_4__ {int phy_op; int phy_adr; int reg_adr; } ;
union cvmx_smix_cmd {scalar_t__ u64; TYPE_2__ s; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, int phy_id, int location)
{
	union cvmx_smix_cmd smi_cmd;
	union cvmx_smix_rd_dat smi_rd;

	smi_cmd.u64 = 0;
	smi_cmd.s.phy_op = 1;
	smi_cmd.s.phy_adr = phy_id;
	smi_cmd.s.reg_adr = location;
	FUNC3(FUNC0(0), smi_cmd.u64);

	do {
		if (!FUNC4())
			FUNC5();
		smi_rd.u64 = FUNC2(FUNC1(0));
	} while (smi_rd.s.pending);

	if (smi_rd.s.val)
		return smi_rd.s.dat;
	else
		return 0;
}