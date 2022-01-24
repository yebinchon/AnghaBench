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

/* Variables and functions */
 int FUNC0 (int) ; 
 int AUDMUX_HPCR_SYN ; 
 int AUDMUX_HPCR_TCLKDIR ; 
 int FUNC1 (int) ; 
 int AUDMUX_HPCR_TFSDIR ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int AUDMUX_PPCR_SYN ; 
 int DAM_HPCR1 ; 
 int DAM_PPCR1 ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	FUNC3("AUDMUX: normal operation mode\n");
	/* Reset HPCR1 and PPCR1 */

	DAM_HPCR1 = 0x00000000;
	DAM_PPCR1 = 0x00000000;

	/* set to synchronous */
	DAM_HPCR1 |= AUDMUX_HPCR_SYN;
	DAM_PPCR1 |= AUDMUX_PPCR_SYN;


	/* set Rx sources 1 <--> 4 */
	DAM_HPCR1 |= FUNC0(3); /* port 4 */
	DAM_PPCR1 |= FUNC2(0); /* port 1 */

	/* set Tx frame and Clock direction and source  4 --> 1 output */
	DAM_HPCR1 |= AUDMUX_HPCR_TFSDIR | AUDMUX_HPCR_TCLKDIR;
	DAM_HPCR1 |= FUNC1(3); /* TxDS and TxCclk from port 4 */

	return;
}