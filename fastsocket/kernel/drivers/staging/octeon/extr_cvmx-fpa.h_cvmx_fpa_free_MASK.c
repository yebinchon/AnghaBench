#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {int /*<<< orphan*/  didspace; } ;
struct TYPE_4__ {int /*<<< orphan*/  u64; TYPE_1__ sfilldidspace; } ;
typedef  TYPE_2__ cvmx_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CVMX_OCT_DID_FPA ; 
 int /*<<< orphan*/  CVMX_SYNCWS ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(void *ptr, uint64_t pool,
				 uint64_t num_cache_lines)
{
	cvmx_addr_t newptr;
	newptr.u64 = FUNC2(ptr);
	newptr.sfilldidspace.didspace =
	    FUNC0(FUNC1(CVMX_OCT_DID_FPA, pool));
	/*
	 * Make sure that any previous writes to memory go out before
	 * we free this buffer.  This also serves as a barrier to
	 * prevent GCC from reordering operations to after the
	 * free.
	 */
	CVMX_SYNCWS;
	/* value written is number of cache lines not written back */
	FUNC3(newptr.u64, num_cache_lines);
}