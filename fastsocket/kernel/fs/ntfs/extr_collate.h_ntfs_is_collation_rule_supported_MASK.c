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
typedef  scalar_t__ COLLATION_RULE ;

/* Variables and functions */
 scalar_t__ COLLATION_BINARY ; 
 scalar_t__ COLLATION_NTOFS_ULONG ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static inline bool FUNC3(COLLATION_RULE cr) {
	int i;

	/*
	 * FIXME:  At the moment we only support COLLATION_BINARY and
	 * COLLATION_NTOFS_ULONG, so we return false for everything else for
	 * now.
	 */
	if (FUNC2(cr != COLLATION_BINARY && cr != COLLATION_NTOFS_ULONG))
		return false;
	i = FUNC0(cr);
	if (FUNC1(((i >= 0) && (i <= 0x02)) ||
			((i >= 0x10) && (i <= 0x13))))
		return true;
	return false;
}