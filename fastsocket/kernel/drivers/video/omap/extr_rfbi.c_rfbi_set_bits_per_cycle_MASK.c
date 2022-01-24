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
typedef  int u32 ;
struct TYPE_2__ {int bits_per_cycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  RFBI_CONFIG0 ; 
 TYPE_1__ rfbi ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(int bpc)
{
	u32 l;

	FUNC1(1);
	l = FUNC2(RFBI_CONFIG0);
	l &= ~(0x03 << 0);

	switch (bpc) {
	case 8:
		break;
	case 16:
		l |= 3;
		break;
	default:
		FUNC0();
	}
	FUNC3(RFBI_CONFIG0, l);
	rfbi.bits_per_cycle = bpc;
	FUNC1(0);
}