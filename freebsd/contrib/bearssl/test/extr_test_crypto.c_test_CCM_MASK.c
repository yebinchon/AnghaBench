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
 int /*<<< orphan*/  const br_aes_big_ctrcbc_vtable ; 
 int /*<<< orphan*/  const br_aes_ct64_ctrcbc_vtable ; 
 int /*<<< orphan*/  const br_aes_ct_ctrcbc_vtable ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  const br_aes_small_ctrcbc_vtable ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	const br_block_ctrcbc_class *x_ctrcbc;

	FUNC3("aes_big", &br_aes_big_ctrcbc_vtable);
	FUNC3("aes_small", &br_aes_small_ctrcbc_vtable);
	FUNC3("aes_ct", &br_aes_ct_ctrcbc_vtable);
	FUNC3("aes_ct64", &br_aes_ct64_ctrcbc_vtable);

	x_ctrcbc = FUNC1();
	if (x_ctrcbc != NULL) {
		FUNC3("aes_x86ni", x_ctrcbc);
	} else {
		FUNC2("Test CCM aes_x86ni: UNAVAILABLE\n");
	}

	x_ctrcbc = FUNC0();
	if (x_ctrcbc != NULL) {
		FUNC3("aes_pwr8", x_ctrcbc);
	} else {
		FUNC2("Test CCM aes_pwr8: UNAVAILABLE\n");
	}
}