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
typedef  int u16 ;

/* Variables and functions */
 int MDA_STATUS_VSYNC ; 
 int /*<<< orphan*/  TYPE_HERC ; 
 int /*<<< orphan*/  TYPE_HERCCOLOR ; 
 int /*<<< orphan*/  TYPE_HERCPLUS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mda_status_port ; 
 int /*<<< orphan*/  mda_type ; 
 char* mda_type_name ; 
 scalar_t__ mda_vram_base ; 
 int mda_vram_len ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void)
{
	int count=0;
	u16 *p, p_save;
	u16 *q, q_save;

	/* do a memory check */

	p = (u16 *) mda_vram_base;
	q = (u16 *) (mda_vram_base + 0x01000);

	p_save = FUNC2(p); q_save = FUNC2(q);

	FUNC3(0xAA55, p); if (FUNC2(p) == 0xAA55) count++;
	FUNC3(0x55AA, p); if (FUNC2(p) == 0x55AA) count++;
	FUNC3(p_save, p);

	if (count != 2) {
		return 0;
	}

	/* check if we have 4K or 8K */

	FUNC3(0xA55A, q); FUNC3(0x0000, p);
	if (FUNC2(q) == 0xA55A) count++;
	
	FUNC3(0x5AA5, q); FUNC3(0x0000, p);
	if (FUNC2(q) == 0x5AA5) count++;

	FUNC3(p_save, p); FUNC3(q_save, q);
	
	if (count == 4) {
		mda_vram_len = 0x02000;
	}
	
	/* Ok, there is definitely a card registering at the correct
	 * memory location, so now we do an I/O port test.
	 */

#ifdef TEST_MDA_B
	/* Edward: These two mess `tests' mess up my cursor on bootup */

	/* cursor low register */
	if (! test_mda_b(0x66, 0x0f)) {
		return 0;
	}

	/* cursor low register */
	if (! test_mda_b(0x99, 0x0f)) {
		return 0;
	}
#endif

	/* See if the card is a Hercules, by checking whether the vsync
	 * bit of the status register is changing.  This test lasts for
	 * approximately 1/10th of a second.
	 */
	
	p_save = q_save = FUNC1(mda_status_port) & MDA_STATUS_VSYNC;

	for (count=0; count < 50000 && p_save == q_save; count++) {
		q_save = FUNC0(mda_status_port) & MDA_STATUS_VSYNC;
		FUNC5(2);
	}

	if (p_save != q_save) {
		switch (FUNC1(mda_status_port) & 0x70) {
			case 0x10:
				mda_type = TYPE_HERCPLUS;
				mda_type_name = "HerculesPlus";
				break;
			case 0x50:
				mda_type = TYPE_HERCCOLOR;
				mda_type_name = "HerculesColor";
				break;
			default:
				mda_type = TYPE_HERC;
				mda_type_name = "Hercules";
				break;
		}
	}

	return 1;
}