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
struct fuse_req {int dummy; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 int num_physpages ; 

__attribute__((used)) static void FUNC0(unsigned *limit)
{
	if (*limit == 0)
		*limit = ((num_physpages << PAGE_SHIFT) >> 13) /
			 sizeof(struct fuse_req);

	if (*limit >= 1 << 16)
		*limit = (1 << 16) - 1;
}