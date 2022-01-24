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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 void* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 

__attribute__((used)) static int inline
FUNC2(void **target, void *src, int size)
{
	if (!*target) {
		*target = FUNC0(size, GFP_ATOMIC);
		if (!*target)
			return -ENOMEM;
	}
	FUNC1(*target, src, size);
	return 0;
}