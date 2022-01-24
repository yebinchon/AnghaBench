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
typedef  int /*<<< orphan*/  uu_avl_walk_t ;
typedef  int /*<<< orphan*/  uu_avl_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  UU_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  UU_ERROR_UNKNOWN_FLAG ; 
 int UU_WALK_REVERSE ; 
 int UU_WALK_ROBUST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 

uu_avl_walk_t *
FUNC3(uu_avl_t *ap, uint32_t flags)
{
	uu_avl_walk_t *wp;

	if (flags & ~(UU_WALK_ROBUST | UU_WALK_REVERSE)) {
		FUNC1(UU_ERROR_UNKNOWN_FLAG);
		return (NULL);
	}

	wp = FUNC2(sizeof (*wp));
	if (wp == NULL) {
		FUNC1(UU_ERROR_NO_MEMORY);
		return (NULL);
	}

	FUNC0(wp, ap, flags);
	return (wp);
}