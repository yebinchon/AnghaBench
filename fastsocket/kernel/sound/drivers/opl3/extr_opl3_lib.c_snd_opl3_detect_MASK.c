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
struct snd_opl3 {scalar_t__ hardware; int /*<<< orphan*/  r_port; int /*<<< orphan*/  (* command ) (struct snd_opl3*,int,int) ;int /*<<< orphan*/  l_port; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ OPL3_HW_AUTO ; 
 scalar_t__ OPL3_HW_OPL2 ; 
 scalar_t__ OPL3_HW_OPL3 ; 
 int OPL3_IRQ_RESET ; 
 int OPL3_LEFT ; 
 int OPL3_REG_TIMER1 ; 
 int OPL3_REG_TIMER_CONTROL ; 
 int OPL3_TIMER1_MASK ; 
 int OPL3_TIMER1_START ; 
 int OPL3_TIMER2_MASK ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_opl3*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_opl3*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_opl3*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_opl3*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_opl3*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_opl3*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct snd_opl3 * opl3)
{
	/*
	 * This function returns 1 if the FM chip is present at the given I/O port
	 * The detection algorithm plays with the timer built in the FM chip and
	 * looks for a change in the status register.
	 *
	 * Note! The timers of the FM chip are not connected to AdLib (and compatible)
	 * boards.
	 *
	 * Note2! The chip is initialized if detected.
	 */

	unsigned char stat1, stat2, signature;

	/* Reset timers 1 and 2 */
	opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_TIMER1_MASK | OPL3_TIMER2_MASK);
	/* Reset the IRQ of the FM chip */
	opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_IRQ_RESET);
	signature = stat1 = FUNC0(opl3->l_port);	/* Status register */
	if ((stat1 & 0xe0) != 0x00) {	/* Should be 0x00 */
		FUNC2("OPL3: stat1 = 0x%x\n", stat1);
		return -ENODEV;
	}
	/* Set timer1 to 0xff */
	opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER1, 0xff);
	/* Unmask and start timer 1 */
	opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_TIMER2_MASK | OPL3_TIMER1_START);
	/* Now we have to delay at least 80us */
	FUNC9(200);
	/* Read status after timers have expired */
	stat2 = FUNC0(opl3->l_port);
	/* Stop the timers */
	opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_TIMER1_MASK | OPL3_TIMER2_MASK);
	/* Reset the IRQ of the FM chip */
	opl3->command(opl3, OPL3_LEFT | OPL3_REG_TIMER_CONTROL, OPL3_IRQ_RESET);
	if ((stat2 & 0xe0) != 0xc0) {	/* There is no YM3812 */
		FUNC2("OPL3: stat2 = 0x%x\n", stat2);
		return -ENODEV;
	}

	/* If the toplevel code knows exactly the type of chip, don't try
	   to detect it. */
	if (opl3->hardware != OPL3_HW_AUTO)
		return 0;

	/* There is a FM chip on this address. Detect the type (OPL2 to OPL4) */
	if (signature == 0x06) {	/* OPL2 */
		opl3->hardware = OPL3_HW_OPL2;
	} else {
		/*
		 * If we had an OPL4 chip, opl3->hardware would have been set
		 * by the OPL4 driver; so we can assume OPL3 here.
		 */
		if (FUNC1(!opl3->r_port))
			return -ENODEV;
		opl3->hardware = OPL3_HW_OPL3;
	}
	return 0;
}