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
struct page {int /*<<< orphan*/  lru; } ;
struct anon_vma {int dummy; } ;
typedef  struct page* (* new_page_t ) (struct page*,unsigned long,int**) ;
typedef  enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int MIGRATE_SYNC ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int TTU_IGNORE_ACCESS ; 
 int TTU_IGNORE_MLOCK ; 
 int TTU_MIGRATION ; 
 int /*<<< orphan*/  FUNC1 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC2 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct page*,struct page*,int,int) ; 
 struct anon_vma* FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct anon_vma*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*,struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

__attribute__((used)) static int FUNC15(new_page_t get_new_page,
				unsigned long private, struct page *hpage,
				int force, bool offlining,
				enum migrate_mode mode)
{
	int rc = 0;
	int *result = NULL;
	struct page *new_hpage = get_new_page(hpage, private, &result);
	struct anon_vma *anon_vma = NULL;

	if (!new_hpage)
		return -ENOMEM;

	rc = -EAGAIN;

	if (!FUNC13(hpage)) {
		if (!force || mode != MIGRATE_SYNC)
			goto out;
		FUNC4(hpage);
	}

	if (FUNC0(hpage)) {
		anon_vma = FUNC6(hpage);
		if (anon_vma) {
			FUNC2(anon_vma);
			FUNC9(anon_vma);
		}
	}

	FUNC12(hpage, TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);

	if (!FUNC7(hpage))
		rc = FUNC5(new_hpage, hpage, 1, mode);

	if (rc)
		FUNC11(hpage, hpage);

	if (anon_vma)
		FUNC1(anon_vma);
out:
	FUNC14(hpage);

	if (rc != -EAGAIN) {
		FUNC3(&hpage->lru);
		FUNC10(hpage);
	}

	FUNC10(new_hpage);

	if (result) {
		if (rc)
			*result = rc;
		else
			*result = FUNC8(new_hpage);
	}
	return rc;
}