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
 int /*<<< orphan*/  ABMON_1 ; 
 int /*<<< orphan*/  ABMON_10 ; 
 int /*<<< orphan*/  ABMON_11 ; 
 int /*<<< orphan*/  ABMON_12 ; 
 int /*<<< orphan*/  ABMON_2 ; 
 int /*<<< orphan*/  ABMON_3 ; 
 int /*<<< orphan*/  ABMON_4 ; 
 int /*<<< orphan*/  ABMON_5 ; 
 int /*<<< orphan*/  ABMON_6 ; 
 int /*<<< orphan*/  ABMON_7 ; 
 int /*<<< orphan*/  ABMON_8 ; 
 int /*<<< orphan*/  ABMON_9 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *
FUNC2(int mon)
{

	switch (mon) {
	case 0: return (FUNC1(ABMON_1));
	case 1: return (FUNC1(ABMON_2));
	case 2: return (FUNC1(ABMON_3));
	case 3: return (FUNC1(ABMON_4));
	case 4: return (FUNC1(ABMON_5));
	case 5: return (FUNC1(ABMON_6));
	case 6: return (FUNC1(ABMON_7));
	case 7: return (FUNC1(ABMON_8));
	case 8: return (FUNC1(ABMON_9));
	case 9: return (FUNC1(ABMON_10));
	case 10: return (FUNC1(ABMON_11));
	case 11: return (FUNC1(ABMON_12));
	}

	/* should never happen */
	FUNC0();
}