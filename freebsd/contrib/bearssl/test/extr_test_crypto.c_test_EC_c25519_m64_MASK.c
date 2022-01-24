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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  br_ec_impl ;

/* Variables and functions */
 int BR_EC_curve25519 ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	const br_ec_impl *ec;

	ec = FUNC0();
	if (ec != NULL) {
		FUNC2("EC_c25519_m64", ec);
		FUNC3("EC_c25519_m64", ec,
			(uint32_t)1 << BR_EC_curve25519);
	} else {
		FUNC1("Test EC_c25519_m64: UNAVAILABLE\n");
		FUNC1("Test EC_c25519_m64 keygen: UNAVAILABLE\n");
	}
}