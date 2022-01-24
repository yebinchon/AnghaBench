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
 int FUNC0 (char const*) ; 
 int* FUNC1 (char const*) ; 

int
FUNC2(const char *string, int limit, int offset)
{
    const int *cols = FUNC1(string);
    int result = FUNC0(string);

    while (result > 0 && (cols[result] - cols[offset]) > limit)
	--result;
    return result;
}