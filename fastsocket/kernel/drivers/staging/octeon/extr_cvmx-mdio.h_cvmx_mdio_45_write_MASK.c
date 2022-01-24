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
struct TYPE_4__ {int dat; scalar_t__ pending; } ;
union cvmx_smix_wr_dat {void* u64; TYPE_2__ s; } ;
struct TYPE_3__ {int phy_adr; int reg_adr; int /*<<< orphan*/  phy_op; } ;
union cvmx_smix_cmd {void* u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MDIO_CLAUSE_45_ADDRESS ; 
 int /*<<< orphan*/  MDIO_CLAUSE_45_WRITE ; 
 int /*<<< orphan*/  OCTEON_FEATURE_MDIO_CLAUSE_45 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC7(int bus_id, int phy_id, int device,
				     int location, int val)
{
	union cvmx_smix_cmd smi_cmd;
	union cvmx_smix_wr_dat smi_wr;
	int timeout = 1000;

	if (!FUNC6(OCTEON_FEATURE_MDIO_CLAUSE_45))
		return -1;

	FUNC2(bus_id);

	smi_wr.u64 = 0;
	smi_wr.s.dat = location;
	FUNC5(FUNC1(bus_id), smi_wr.u64);

	smi_cmd.u64 = 0;
	smi_cmd.s.phy_op = MDIO_CLAUSE_45_ADDRESS;
	smi_cmd.s.phy_adr = phy_id;
	smi_cmd.s.reg_adr = device;
	FUNC5(FUNC0(bus_id), smi_cmd.u64);

	do {
		FUNC4(1000);
		smi_wr.u64 = FUNC3(FUNC1(bus_id));
	} while (smi_wr.s.pending && --timeout);
	if (timeout <= 0)
		return -1;

	smi_wr.u64 = 0;
	smi_wr.s.dat = val;
	FUNC5(FUNC1(bus_id), smi_wr.u64);

	smi_cmd.u64 = 0;
	smi_cmd.s.phy_op = MDIO_CLAUSE_45_WRITE;
	smi_cmd.s.phy_adr = phy_id;
	smi_cmd.s.reg_adr = device;
	FUNC5(FUNC0(bus_id), smi_cmd.u64);

	do {
		FUNC4(1000);
		smi_wr.u64 = FUNC3(FUNC1(bus_id));
	} while (smi_wr.s.pending && --timeout);
	if (timeout <= 0)
		return -1;

	return 0;
}