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
struct anon_vma {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  THP_SPLIT ; 
 int /*<<< orphan*/  FUNC4 (struct page*,struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct anon_vma* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct anon_vma*) ; 

int FUNC8(struct page *page)
{
	struct anon_vma *anon_vma;
	int ret = 1;

	FUNC0(!FUNC1(page));
	anon_vma = FUNC6(page);
	if (!anon_vma)
		goto out;
	ret = 0;
	if (!FUNC2(page))
		goto out_unlock;

	FUNC0(!FUNC3(page));
	FUNC4(page, anon_vma);
	FUNC5(THP_SPLIT);

	FUNC0(FUNC2(page));
out_unlock:
	FUNC7(anon_vma);
out:
	return ret;
}