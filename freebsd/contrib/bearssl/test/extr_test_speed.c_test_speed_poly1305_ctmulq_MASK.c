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
typedef  scalar_t__ br_poly1305_run ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(void)
{
	br_poly1305_run bp;

	bp = FUNC0();
	if (bp == 0) {
		FUNC1("%-30s UNAVAILABLE\n", "Poly1305 (ctmulq)");
	} else {
		FUNC2("Poly1305 (ctmulq)", bp);
	}
}