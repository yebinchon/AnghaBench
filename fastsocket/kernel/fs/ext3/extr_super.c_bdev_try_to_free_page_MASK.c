#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int gfp_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_journal; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int __GFP_WAIT ; 
 int FUNC3 (int /*<<< orphan*/ *,struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb, struct page *page,
				 gfp_t wait)
{
	journal_t *journal = FUNC0(sb)->s_journal;

	FUNC2(FUNC1(page));
	if (!FUNC4(page))
		return 0;
	if (journal)
		return FUNC3(journal, page, 
						   wait & ~__GFP_WAIT);
	return FUNC5(page);
}