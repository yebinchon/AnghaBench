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
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  PE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,size_t) ; 

off_t
FUNC3(PE *pe, off_t off, size_t align)
{
	off_t n;

	FUNC0(align > 0 && (align & (align - 1)) == 0);

	n = FUNC2(off, align);
	if (n > off) {
		if (FUNC1(pe, n - off) < 0)
			return (-1);
	}

	return (n);
}