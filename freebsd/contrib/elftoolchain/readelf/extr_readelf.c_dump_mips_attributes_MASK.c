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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct readelf {int dummy; } ;

/* Variables and functions */
#define  Tag_GNU_MIPS_ABI_FP 128 
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void
FUNC5(struct readelf *re, uint8_t *p, uint8_t *pe)
{
	uint64_t tag, val;

	(void) re;

	while (p < pe) {
		tag = FUNC0(&p, pe);
		switch (tag) {
		case Tag_GNU_MIPS_ABI_FP:
			val = FUNC0(&p, pe);
			FUNC4("  Tag_GNU_MIPS_ABI_FP: %s\n", FUNC3(val));
			break;
		case 32:	/* Tag_compatibility */
			p = FUNC1(p, pe);
			break;
		default:
			p = FUNC2(tag, p, pe);
			break;
		}
	}
}