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
typedef  int /*<<< orphan*/  mm_segment_t ;

/* Variables and functions */
 int FUNC0 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(const char *fn, char **fp)
{
	int r;
	mm_segment_t fs = FUNC2();

	FUNC3(FUNC1());
	r = FUNC0(fn, fp);
	FUNC3(fs);
	return r;
}