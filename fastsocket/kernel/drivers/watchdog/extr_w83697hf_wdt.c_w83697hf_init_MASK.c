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
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned char bbuf;

	FUNC2();

	bbuf = FUNC1(0x29);
	bbuf &= ~0x60;
	bbuf |= 0x20;

	/* Set pin 119 to WDTO# mode (= CR29, WDT0) */
	FUNC3(0x29, bbuf);

	bbuf = FUNC1(0xF3);
	bbuf &= ~0x04;
	FUNC3(0xF3, bbuf);	/* Count mode is seconds */

	FUNC0();
}