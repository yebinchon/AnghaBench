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
 scalar_t__ csv_output ; 
 char* csv_sep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  output ; 
 double FUNC1 (double,double) ; 

__attribute__((used)) static void FUNC2(double total, double avg)
{
	double pct = FUNC1(total, avg);

	if (csv_output)
		FUNC0(output, "%s%.2f%%", csv_sep, pct);
	else if (pct)
		FUNC0(output, "  ( +-%6.2f%% )", pct);
}