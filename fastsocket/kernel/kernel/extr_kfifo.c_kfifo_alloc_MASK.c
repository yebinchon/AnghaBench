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
struct kfifo {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct kfifo* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct kfifo*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 struct kfifo* FUNC4 (unsigned char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (unsigned int) ; 

struct kfifo *FUNC8(unsigned int size, gfp_t gfp_mask, spinlock_t *lock)
{
	unsigned char *buffer;
	struct kfifo *ret;

	/*
	 * round up to the next power of 2, since our 'let the indices
	 * wrap' technique works only in this case.
	 */
	if (!FUNC3(size)) {
		FUNC0(size > 0x80000000);
		size = FUNC7(size);
	}

	buffer = FUNC6(size, gfp_mask);
	if (!buffer)
		return FUNC1(-ENOMEM);

	ret = FUNC4(buffer, size, gfp_mask, lock);

	if (FUNC2(ret))
		FUNC5(buffer);

	return ret;
}