#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int da; int /*<<< orphan*/  cl; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_CLR ; 
 int /*<<< orphan*/  BIT_SET ; 
 TYPE_1__ bits ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(int byte)
{
	int bit;

	/* the data bit is set on D0, and the clock on STROBE.
	 * LCD reads D0 on STROBE's rising edge.
	 */
	for (bit = 0; bit < 8; bit++) {
		bits.cl = BIT_CLR;	/* CLK low */
		FUNC0();
		bits.da = byte & 1;
		FUNC0();
		FUNC1(2);	/* maintain the data during 2 us before CLK up */
		bits.cl = BIT_SET;	/* CLK high */
		FUNC0();
		FUNC1(1);	/* maintain the strobe during 1 us */
		byte >>= 1;
	}
}