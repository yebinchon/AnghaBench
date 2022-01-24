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
typedef  int /*<<< orphan*/  br_block_ctrcbc_class ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC3(void)
{
	const br_block_ctrcbc_class *vt;

	vt = FUNC0();
	if (vt != NULL) {
		FUNC2("pwr8", vt);
	} else {
		FUNC1("Test AES CTR/CBC-MAC pwr8: UNAVAILABLE\n");
	}
}