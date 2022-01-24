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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int TIME_THRESH ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  first_time ; 
 int /*<<< orphan*/  last_time ; 
 int /*<<< orphan*/  max_freq ; 
 scalar_t__ numcpus ; 
 int /*<<< orphan*/  FUNC5 (char const*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  turbo_frequency ; 

__attribute__((used)) static void FUNC10(const char *filename)
{
	u64 i;
	int count;

	numcpus++;


	count = FUNC0(TIME_THRESH);

	/* We'd like to show at least 15 tasks; be less picky if we have fewer */
	if (count < 15)
		count = FUNC0(TIME_THRESH / 10);

	FUNC5(filename, numcpus, count, first_time, last_time);

	FUNC9();
	FUNC8();

	for (i = 0; i < numcpus; i++)
		FUNC7(i, max_freq, turbo_frequency);

	FUNC2();
	FUNC3();
	FUNC1();
	FUNC4();

	FUNC6();
}