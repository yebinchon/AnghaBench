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
typedef  size_t u8 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (size_t const) ; 

bool FUNC1(u8 const *ccid_array, u8 array_len)
{
	while (array_len > 0)
		if (FUNC0(ccid_array[--array_len]) == NULL)
			return false;
	return true;
}