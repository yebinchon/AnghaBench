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
 int UMEM_DEFAULT ; 
 int UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void *FUNC4(size_t size, int flags)
{
	FUNC1(flags == UMEM_DEFAULT || flags == UMEM_NOFAIL);

	if(size == 0)
		return NULL;

	void *ret = FUNC2(size);
	if(ret == NULL) {
		if(!(flags & UMEM_NOFAIL))
			return NULL;

		if(&nofail_cb != NULL)
			FUNC3();
		FUNC0();
	}

	return ret;
}