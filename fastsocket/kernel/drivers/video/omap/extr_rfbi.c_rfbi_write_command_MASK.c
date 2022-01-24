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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int bits_per_cycle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RFBI_CMD ; 
 TYPE_1__ rfbi ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(const void *buf, unsigned int len)
{
	FUNC1(1);
	if (rfbi.bits_per_cycle == 16) {
		const u16 *w = buf;
		FUNC0(len & 1);
		for (; len; len -= 2)
			FUNC2(RFBI_CMD, *w++);
	} else {
		const u8 *b = buf;
		FUNC0(rfbi.bits_per_cycle != 8);
		for (; len; len--)
			FUNC2(RFBI_CMD, *b++);
	}
	FUNC1(0);
}