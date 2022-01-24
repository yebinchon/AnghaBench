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
 int CDF_BASE_YEAR ; 
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(int year)
{
	int days = 0;
	int y;

	for (y = CDF_BASE_YEAR; y < year; y++)
		days += FUNC0(y) + 365;

	return days;
}