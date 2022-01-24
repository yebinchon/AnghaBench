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
struct TYPE_2__ {int qos0_pri; int qos1_pri; int qos2_pri; int qos3_pri; int qos4_pri; int qos5_pri; int qos6_pri; int qos7_pri; } ;
union cvmx_pow_pp_grp_mskx {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned long long) ; 

__attribute__((used)) static inline void FUNC6(uint64_t core_num,
					 const uint8_t priority[])
{
	/* POW priorities are supported on CN5xxx and later */
	if (!FUNC1(OCTEON_CN3XXX)) {
		union cvmx_pow_pp_grp_mskx grp_msk;

		grp_msk.u64 = FUNC3(FUNC0(core_num));
		grp_msk.s.qos0_pri = priority[0];
		grp_msk.s.qos1_pri = priority[1];
		grp_msk.s.qos2_pri = priority[2];
		grp_msk.s.qos3_pri = priority[3];
		grp_msk.s.qos4_pri = priority[4];
		grp_msk.s.qos5_pri = priority[5];
		grp_msk.s.qos6_pri = priority[6];
		grp_msk.s.qos7_pri = priority[7];

		/* Detect gaps between priorities and flag error */
		{
			int i;
			uint32_t prio_mask = 0;

			for (i = 0; i < 8; i++)
				if (priority[i] != 0xF)
					prio_mask |= 1 << priority[i];

			if (prio_mask ^ ((1 << FUNC2(prio_mask)) - 1)) {
				FUNC5("POW static priorities should be "
				       "contiguous (0x%llx)\n",
				     (unsigned long long)prio_mask);
				return;
			}
		}

		FUNC4(FUNC0(core_num), grp_msk.u64);
	}
}