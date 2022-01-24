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
typedef  int u8 ;
struct mtpav {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREG ; 
 int SIGC_READ ; 
 int SIGS_BYTE ; 
 int SIGS_IN0 ; 
 int SIGS_IN1 ; 
 int /*<<< orphan*/  SREG ; 
 int FUNC0 (struct mtpav*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtpav*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mtpav*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mtpav *mcrd)
{
	u8 clrread, setread;
	u8 mtp_read_byte;
	u8 sr, cbyt;
	int i;

	u8 sbyt = FUNC0(mcrd, SREG);

	/* printk(KERN_DEBUG "snd_mtpav_read_bytes() sbyt: 0x%x\n", sbyt); */

	if (!(sbyt & SIGS_BYTE))
		return;

	cbyt = FUNC0(mcrd, CREG);
	clrread = cbyt & (SIGC_READ ^ 0xff);
	setread = cbyt | SIGC_READ;

	do {

		mtp_read_byte = 0;
		for (i = 0; i < 4; i++) {
			FUNC2(mcrd, CREG, setread);
			sr = FUNC0(mcrd, SREG);
			FUNC2(mcrd, CREG, clrread);

			sr &= SIGS_IN0 | SIGS_IN1;
			sr >>= 4;
			mtp_read_byte |= sr << (i * 2);
		}

		FUNC1(mcrd, mtp_read_byte);

		sbyt = FUNC0(mcrd, SREG);

	} while (sbyt & SIGS_BYTE);
}