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
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int __GFP_HIGH ; 
 int __GFP_WAIT ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,struct bio**) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *buf, sector_t offset, struct bio **bio_chain)
{
	void *src;

	if (!offset)
		return -ENOSPC;

	if (bio_chain) {
		src = (void *)FUNC1(__GFP_WAIT | __GFP_HIGH);
		if (src) {
			FUNC3(src, buf, PAGE_SIZE);
		} else {
			FUNC0(1);
			bio_chain = NULL;	/* Go synchronous */
			src = buf;
		}
	} else {
		src = buf;
	}
	return FUNC2(offset, src, bio_chain);
}