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
 int /*<<< orphan*/  EFAULT ; 
 void const* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void const*,size_t) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static const void *
FUNC3(const void *p, const void *end, void *res, size_t len)
{
	const void *q = (const void *)((const char *)p + len);
	if (FUNC2(q > end || q < p))
		return FUNC0(-EFAULT);
	FUNC1(res, p, len);
	return q;
}