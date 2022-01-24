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
typedef  int /*<<< orphan*/  u32 ;
struct page {int dummy; } ;
struct ocfs2_super {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 void* FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC4(struct page *page,
				     struct ocfs2_super *osb, u32 cpos,
				     unsigned from, unsigned to)
{
	void *kaddr;
	unsigned int cluster_start, cluster_end;

	FUNC3(osb, cpos, &cluster_start, &cluster_end);

	kaddr = FUNC0(page, KM_USER0);

	if (from || to) {
		if (from > cluster_start)
			FUNC2(kaddr + cluster_start, 0, from - cluster_start);
		if (to < cluster_end)
			FUNC2(kaddr + to, 0, cluster_end - to);
	} else {
		FUNC2(kaddr + cluster_start, 0, cluster_end - cluster_start);
	}

	FUNC1(kaddr, KM_USER0);
}