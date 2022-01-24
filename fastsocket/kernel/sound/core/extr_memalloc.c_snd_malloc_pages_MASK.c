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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  __GFP_COMP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void *FUNC4(size_t size, gfp_t gfp_flags)
{
	int pg;
	void *res;

	if (FUNC0(!size))
		return NULL;
	if (FUNC0(!gfp_flags))
		return NULL;
	gfp_flags |= __GFP_COMP;	/* compound page lets parts be mapped */
	pg = FUNC2(size);
	if ((res = (void *) FUNC1(gfp_flags, pg)) != NULL)
		FUNC3(pg);
	return res;
}