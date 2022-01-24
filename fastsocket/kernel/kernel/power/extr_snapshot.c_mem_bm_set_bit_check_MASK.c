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
struct memory_bitmap {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct memory_bitmap*,unsigned long,void**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,void*) ; 

__attribute__((used)) static int FUNC2(struct memory_bitmap *bm, unsigned long pfn)
{
	void *addr;
	unsigned int bit;
	int error;

	error = FUNC0(bm, pfn, &addr, &bit);
	if (!error)
		FUNC1(bit, addr);
	return error;
}