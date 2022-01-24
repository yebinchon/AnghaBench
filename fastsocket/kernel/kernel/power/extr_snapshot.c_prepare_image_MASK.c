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
struct linked_page {struct linked_page* next; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PBES_PER_LINKED_PAGE ; 
 int /*<<< orphan*/  PG_SAFE ; 
 int /*<<< orphan*/  PG_UNSAFE_CLEAR ; 
 int /*<<< orphan*/  PG_UNSAFE_KEEP ; 
 unsigned int allocated_unsafe_pages ; 
 struct linked_page* buffer ; 
 unsigned int FUNC1 (struct memory_bitmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct memory_bitmap*,struct memory_bitmap*) ; 
 int /*<<< orphan*/  FUNC3 (struct linked_page*,int /*<<< orphan*/ ) ; 
 struct linked_page* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct memory_bitmap*) ; 
 int FUNC7 (struct memory_bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct memory_bitmap*,int /*<<< orphan*/ ) ; 
 unsigned int nr_copy_pages ; 
 int FUNC9 (struct memory_bitmap*,unsigned int*) ; 
 struct linked_page* safe_pages_list ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct linked_page*) ; 

__attribute__((used)) static int
FUNC15(struct memory_bitmap *new_bm, struct memory_bitmap *bm)
{
	unsigned int nr_pages, nr_highmem;
	struct linked_page *sp_list, *lp;
	int error;

	/* If there is no highmem, the buffer will not be necessary */
	FUNC3(buffer, PG_UNSAFE_CLEAR);
	buffer = NULL;

	nr_highmem = FUNC1(bm);
	error = FUNC6(bm);
	if (error)
		goto Free;

	error = FUNC7(new_bm, GFP_ATOMIC, PG_SAFE);
	if (error)
		goto Free;

	FUNC2(new_bm, bm);
	FUNC8(bm, PG_UNSAFE_KEEP);
	if (nr_highmem > 0) {
		error = FUNC9(bm, &nr_highmem);
		if (error)
			goto Free;
	}
	/* Reserve some safe pages for potential later use.
	 *
	 * NOTE: This way we make sure there will be enough safe pages for the
	 * chain_alloc() in get_buffer().  It is a bit wasteful, but
	 * nr_copy_pages cannot be greater than 50% of the memory anyway.
	 */
	sp_list = NULL;
	/* nr_copy_pages cannot be lesser than allocated_unsafe_pages */
	nr_pages = nr_copy_pages - nr_highmem - allocated_unsafe_pages;
	nr_pages = FUNC0(nr_pages, PBES_PER_LINKED_PAGE);
	while (nr_pages > 0) {
		lp = FUNC4(GFP_ATOMIC, PG_SAFE);
		if (!lp) {
			error = -ENOMEM;
			goto Free;
		}
		lp->next = sp_list;
		sp_list = lp;
		nr_pages--;
	}
	/* Preallocate memory for the image */
	safe_pages_list = NULL;
	nr_pages = nr_copy_pages - nr_highmem - allocated_unsafe_pages;
	while (nr_pages > 0) {
		lp = (struct linked_page *)FUNC5(GFP_ATOMIC);
		if (!lp) {
			error = -ENOMEM;
			goto Free;
		}
		if (!FUNC11(FUNC14(lp))) {
			/* The page is "safe", add it to the list */
			lp->next = safe_pages_list;
			safe_pages_list = lp;
		}
		/* Mark the page as allocated */
		FUNC12(FUNC14(lp));
		FUNC13(FUNC14(lp));
		nr_pages--;
	}
	/* Free the reserved safe pages so that chain_alloc() can use them */
	while (sp_list) {
		lp = sp_list->next;
		FUNC3(sp_list, PG_UNSAFE_CLEAR);
		sp_list = lp;
	}
	return 0;

 Free:
	FUNC10();
	return error;
}