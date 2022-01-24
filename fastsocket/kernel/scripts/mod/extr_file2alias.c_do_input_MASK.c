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
typedef  long kernel_ulong_t ;

/* Variables and functions */
 unsigned int BITS_PER_LONG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(char *alias,
		     kernel_ulong_t *arr, unsigned int min, unsigned int max)
{
	unsigned int i;

	for (i = min; i < max; i++)
		if (arr[i / BITS_PER_LONG] & (1L << (i%BITS_PER_LONG)))
			FUNC0(alias + FUNC1(alias), "%X,*", i);
}