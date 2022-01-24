#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {unsigned char MCE_bit; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ ad1848_info ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(ad1848_info * devc, int reg)
{
	int x;
	int timeout = 900000;

	while (timeout > 0 && FUNC0(devc->base) == 0x80)	/*Are we initializing */
		timeout--;

	if(reg < 32)
	{
		FUNC3(((unsigned char) (reg & 0xff) | devc->MCE_bit), FUNC1(devc));
		x = FUNC0(FUNC2(devc));
	}
	else
	{
		int xreg, xra;

		xreg = (reg & 0xff) - 32;
		xra = (((xreg & 0x0f) << 4) & 0xf0) | 0x08 | ((xreg & 0x10) >> 2);
		FUNC3(((unsigned char) (23 & 0xff) | devc->MCE_bit), FUNC1(devc));
		FUNC3(((unsigned char) (xra & 0xff)), FUNC2(devc));
		x = FUNC0(FUNC2(devc));
	}

	return x;
}