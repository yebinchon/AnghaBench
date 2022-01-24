#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char* uintmax_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
struct readelf {scalar_t__ ec; scalar_t__ (* dw_decode ) (int /*<<< orphan*/ **,int) ;} ;

/* Variables and functions */
 scalar_t__ ELFCLASS32 ; 
 scalar_t__ ELFCLASS64 ; 
 int /*<<< orphan*/  ODK_REGINFO ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void
FUNC7(struct readelf *re, uint8_t *p, size_t sz)
{
	uint32_t ri_gprmask;
	uint32_t ri_cprmask[4];
	uint64_t ri_gp_value;
	uint8_t *pe;
	int i;

	pe = p + sz;
	while (p < pe) {
		ri_gprmask = re->dw_decode(&p, 4);
		/* Skip ri_pad padding field for mips64. */
		if (re->ec == ELFCLASS64)
			re->dw_decode(&p, 4);
		for (i = 0; i < 4; i++)
			ri_cprmask[i] = re->dw_decode(&p, 4);
		if (re->ec == ELFCLASS32)
			ri_gp_value = re->dw_decode(&p, 4);
		else
			ri_gp_value = re->dw_decode(&p, 8);
		FUNC1(" %s    ", FUNC0(ODK_REGINFO));
		FUNC1("ri_gprmask:    0x%08jx\n", (uintmax_t) ri_gprmask);
		for (i = 0; i < 4; i++)
			FUNC1("%11.11s ri_cprmask[%d]: 0x%08jx\n", "", i,
			    (uintmax_t) ri_cprmask[i]);
		FUNC1("%12.12s", "");
		FUNC1("ri_gp_value:   %#jx\n", (uintmax_t) ri_gp_value);
	}
}