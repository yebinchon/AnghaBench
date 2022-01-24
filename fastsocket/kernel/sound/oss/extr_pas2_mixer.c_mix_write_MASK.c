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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,scalar_t__) ; 
 int pas_model ; 
 scalar_t__ pas_translate_code ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int) ; 

void
FUNC3(unsigned char data, int ioaddr)
{
	/*
	 * The Revision D cards have a problem with their MVA508 interface. The
	 * kludge-o-rama fix is to make a 16-bit quantity with identical LSB and
	 * MSBs out of the output byte and to do a 16-bit out to the mixer port -
	 * 1. We need to do this because it isn't timing problem but chip access
	 * sequence problem.
	 */

	if (pas_model == 4)
	  {
		  FUNC1(data | (data << 8), (ioaddr + pas_translate_code) - 1);
		  FUNC0((0x80), 0);
	} else
		FUNC2(data, ioaddr);
}