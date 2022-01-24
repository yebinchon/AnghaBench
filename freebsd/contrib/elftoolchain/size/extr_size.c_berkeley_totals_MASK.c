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
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 scalar_t__ RADIX_DECIMAL ; 
 scalar_t__ RADIX_HEX ; 
 scalar_t__ RADIX_OCTAL ; 
 scalar_t__ bss_size_total ; 
 scalar_t__ data_size_total ; 
 scalar_t__ radix ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ text_size_total ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint64_t grand_total;

	grand_total = text_size_total + data_size_total + bss_size_total;
	FUNC0();
	FUNC1(text_size_total, radix, 0);
	FUNC1(data_size_total, radix, 1);
	FUNC1(bss_size_total, radix, 2);
	if (radix == RADIX_OCTAL)
		FUNC1(grand_total, RADIX_OCTAL, 3);
	else
		FUNC1(grand_total, RADIX_DECIMAL, 3);
	FUNC1(grand_total, RADIX_HEX, 4);
}