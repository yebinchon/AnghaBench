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
struct TYPE_2__ {int ipd_en; int /*<<< orphan*/  len_m8; } ;
union cvmx_ipd_ctl_status {int /*<<< orphan*/  u64; TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_IPD_CTL_STATUS ; 
 int /*<<< orphan*/  OCTEON_CN38XX_PASS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(void)
{
	union cvmx_ipd_ctl_status ipd_reg;
	ipd_reg.u64 = FUNC2(CVMX_IPD_CTL_STATUS);
	if (ipd_reg.s.ipd_en) {
		FUNC1
		    ("Warning: Enabling IPD when IPD already enabled.\n");
	}
	ipd_reg.s.ipd_en = 1;
#if  CVMX_ENABLE_LEN_M8_FIX
	if (!OCTEON_IS_MODEL(OCTEON_CN38XX_PASS2))
		ipd_reg.s.len_m8 = TRUE;
#endif
	FUNC3(CVMX_IPD_CTL_STATUS, ipd_reg.u64);
}