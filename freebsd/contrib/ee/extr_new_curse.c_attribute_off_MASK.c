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
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__*,int) ; 
 scalar_t__* String_table ; 
 scalar_t__* attributes_set ; 
 size_t me__ ; 
 size_t sa__ ; 
 size_t se__ ; 

void 
FUNC1()
{
	if (String_table[me__])
		FUNC0(String_table[me__], NULL, 0);
	else if (String_table[sa__])
	{
		attributes_set[0] = 0;
		FUNC0(String_table[sa__], attributes_set, 1);
	}
	else if (String_table[se__])
		FUNC0(String_table[se__], NULL, 0);
}