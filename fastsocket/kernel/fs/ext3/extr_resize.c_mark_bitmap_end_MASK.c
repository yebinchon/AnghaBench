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
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 

__attribute__((used)) static void FUNC3(int start_bit, int end_bit, char *bitmap)
{
	int i;

	if (start_bit >= end_bit)
		return;

	FUNC0("mark end bits +%d through +%d used\n", start_bit, end_bit);
	for (i = start_bit; i < ((start_bit + 7) & ~7UL); i++)
		FUNC1(i, bitmap);
	if (i < end_bit)
		FUNC2(bitmap + (i >> 3), 0xff, (end_bit - i) >> 3);
}