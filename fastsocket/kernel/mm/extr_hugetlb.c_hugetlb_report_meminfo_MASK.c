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
struct seq_file {int dummy; } ;
struct hstate {int /*<<< orphan*/  surplus_huge_pages; int /*<<< orphan*/  resv_huge_pages; int /*<<< orphan*/  free_huge_pages; int /*<<< orphan*/  nr_huge_pages; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct hstate default_hstate ; 
 int FUNC0 (struct hstate*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

void FUNC2(struct seq_file *m)
{
	struct hstate *h = &default_hstate;
	FUNC1(m,
			"HugePages_Total:   %5lu\n"
			"HugePages_Free:    %5lu\n"
			"HugePages_Rsvd:    %5lu\n"
			"HugePages_Surp:    %5lu\n"
			"Hugepagesize:   %8lu kB\n",
			h->nr_huge_pages,
			h->free_huge_pages,
			h->resv_huge_pages,
			h->surplus_huge_pages,
			1UL << (FUNC0(h) + PAGE_SHIFT - 10));
}