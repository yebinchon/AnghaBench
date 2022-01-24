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
typedef  int /*<<< orphan*/  br_block_ctr_class ;
typedef  int /*<<< orphan*/  br_block_cbcenc_class ;
typedef  int /*<<< orphan*/  br_block_cbcdec_class ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int) ; 

__attribute__((used)) static void
FUNC7(void)
{
	const br_block_cbcenc_class *x_cbcenc;
	const br_block_cbcdec_class *x_cbcdec;
	const br_block_ctr_class *x_ctr;
	int hcbcenc, hcbcdec, hctr;

	x_cbcenc = FUNC1();
	x_cbcdec = FUNC0();
	x_ctr = FUNC2();
	hcbcenc = (x_cbcenc != NULL);
	hcbcdec = (x_cbcdec != NULL);
	hctr = (x_ctr != NULL);
	if (hcbcenc != hctr || hcbcdec != hctr) {
		FUNC4(stderr, "AES_pwr8 availability mismatch (%d/%d/%d)\n",
			hcbcenc, hcbcdec, hctr);
		FUNC3(EXIT_FAILURE);
	}
	if (hctr) {
		FUNC6("AES_pwr8",
			x_cbcenc, x_cbcdec, x_ctr, 1, 1);
	} else {
		FUNC5("Test AES_pwr8: UNAVAILABLE\n");
	}
}