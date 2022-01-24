#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int base; } ;
typedef  TYPE_1__ sb_devc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(sb_devc * devc)
{
	unsigned char bits;

	switch (devc->base)
	{
		case 0x220:
			bits = 0x04;
			break;
		case 0x230:
			bits = 0x05;
			break;
		case 0x240:
			bits = 0x06;
			break;
		case 0x250:
			bits = 0x07;
			break;
		default:
			return;	/* Wrong port */
	}

	FUNC0(FUNC3("Doing ESS1688 address selection\n"));
	
	/*
	 * ES1688 supports two alternative ways for software address config.
	 * First try the so called Read-Sequence-Key method.
	 */

	/* Reset the sequence logic */
	FUNC1(0x229);
	FUNC1(0x229);
	FUNC1(0x229);

	/* Perform the read sequence */
	FUNC1(0x22b);
	FUNC1(0x229);
	FUNC1(0x22b);
	FUNC1(0x229);
	FUNC1(0x229);
	FUNC1(0x22b);
	FUNC1(0x229);

	/* Select the base address by reading from it. Then probe using the port. */
	FUNC1(devc->base);
	if (FUNC4(devc))	/* Bingo */
		return;

#if 0				/* This causes system lockups (Nokia 386/25 at least) */
	/*
	 * The last resort is the system control register method.
	 */

	outb((0x00), 0xfb);	/* 0xFB is the unlock register */
	outb((0x00), 0xe0);	/* Select index 0 */
	outb((bits), 0xe1);	/* Write the config bits */
	outb((0x00), 0xf9);	/* 0xFB is the lock register */
#endif
}