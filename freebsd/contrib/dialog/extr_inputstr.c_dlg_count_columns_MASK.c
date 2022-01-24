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
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int* FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

int
FUNC4(const char *string)
{
    int result = 0;
    int limit = FUNC0(string);
    if (limit > 0) {
	const int *cols = FUNC2(string);
	result = cols[limit];
    } else {
	result = (int) FUNC3(string);
    }
    FUNC1(string);
    return result;
}