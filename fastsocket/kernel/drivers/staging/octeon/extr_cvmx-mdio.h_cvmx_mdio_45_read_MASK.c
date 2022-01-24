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
struct TYPE_4__ {int dat; scalar_t__ pending; } ;
union cvmx_smix_wr_dat {void* u64; TYPE_1__ s; } ;
struct TYPE_6__ {int dat; scalar_t__ val; scalar_t__ pending; } ;
union cvmx_smix_rd_dat {TYPE_3__ s; void* u64; } ;
struct TYPE_5__ {int phy_adr; int reg_adr; int /*<<< orphan*/  phy_op; } ;
union cvmx_smix_cmd {void* u64; TYPE_2__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MDIO_CLAUSE_45_ADDRESS ; 
 int /*<<< orphan*/  MDIO_CLAUSE_45_READ ; 
 int /*<<< orphan*/  OCTEON_FEATURE_MDIO_CLAUSE_45 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int,int) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC9(int bus_id, int phy_id, int device,
				    int location)
{
	union cvmx_smix_cmd smi_cmd;
	union cvmx_smix_rd_dat smi_rd;
	union cvmx_smix_wr_dat smi_wr;
	int timeout = 1000;

	if (!FUNC8(OCTEON_FEATURE_MDIO_CLAUSE_45))
		return -1;

	FUNC3(bus_id);

	smi_wr.u64 = 0;
	smi_wr.s.dat = location;
	FUNC7(FUNC2(bus_id), smi_wr.u64);

	smi_cmd.u64 = 0;
	smi_cmd.s.phy_op = MDIO_CLAUSE_45_ADDRESS;
	smi_cmd.s.phy_adr = phy_id;
	smi_cmd.s.reg_adr = device;
	FUNC7(FUNC0(bus_id), smi_cmd.u64);

	do {
		FUNC6(1000);
		smi_wr.u64 = FUNC5(FUNC2(bus_id));
	} while (smi_wr.s.pending && --timeout);
	if (timeout <= 0) {
		FUNC4("cvmx_mdio_45_read: bus_id %d phy_id %2d "
			     "device %2d register %2d   TIME OUT(address)\n",
		     bus_id, phy_id, device, location);
		return -1;
	}

	smi_cmd.u64 = 0;
	smi_cmd.s.phy_op = MDIO_CLAUSE_45_READ;
	smi_cmd.s.phy_adr = phy_id;
	smi_cmd.s.reg_adr = device;
	FUNC7(FUNC0(bus_id), smi_cmd.u64);

	do {
		FUNC6(1000);
		smi_rd.u64 = FUNC5(FUNC1(bus_id));
	} while (smi_rd.s.pending && --timeout);

	if (timeout <= 0) {
		FUNC4("cvmx_mdio_45_read: bus_id %d phy_id %2d "
			     "device %2d register %2d   TIME OUT(data)\n",
		     bus_id, phy_id, device, location);
		return -1;
	}

	if (smi_rd.s.val)
		return smi_rd.s.dat;
	else {
		FUNC4("cvmx_mdio_45_read: bus_id %d phy_id %2d "
			     "device %2d register %2d   INVALID READ\n",
		     bus_id, phy_id, device, location);
		return -1;
	}
}