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
typedef  int apr_uint32_t ;

/* Variables and functions */
 scalar_t__ RAND_MAX ; 
 int firsttime ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(apr_uint32_t high)
{
    apr_uint32_t i = 0;
    double d = 0;

    if (firsttime == 0) {
	FUNC2((unsigned) (FUNC0()));
	firsttime = 1;
    }

    d = (double) FUNC1() / ((double) RAND_MAX + 1);
    i = (int) (d * (high - 0 + 1));

    return i > 0 ? i : 1;
}