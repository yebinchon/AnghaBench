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
struct page {int dummy; } ;
struct kvm {int dummy; } ;
typedef  int /*<<< orphan*/  pfn_t ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct page* bad_page ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 

struct page *FUNC5(struct kvm *kvm, gfn_t gfn)
{
	pfn_t pfn;

	pfn = FUNC2(kvm, gfn);
	if (!FUNC3(pfn))
		return FUNC4(pfn);

	FUNC0(FUNC3(pfn));

	FUNC1(bad_page);
	return bad_page;
}