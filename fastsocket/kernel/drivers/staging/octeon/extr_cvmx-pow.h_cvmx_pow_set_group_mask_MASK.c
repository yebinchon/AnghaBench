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
struct TYPE_2__ {int /*<<< orphan*/  grp_msk; } ;
union cvmx_pow_pp_grp_mskx {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(uint64_t core_num, uint64_t mask)
{
	union cvmx_pow_pp_grp_mskx grp_msk;

	grp_msk.u64 = FUNC1(FUNC0(core_num));
	grp_msk.s.grp_msk = mask;
	FUNC2(FUNC0(core_num), grp_msk.u64);
}