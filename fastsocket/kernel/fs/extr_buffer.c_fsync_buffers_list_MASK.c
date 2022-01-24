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
struct list_head {int /*<<< orphan*/  prev; int /*<<< orphan*/  next; } ;
struct buffer_head {struct address_space* b_assoc_map; int /*<<< orphan*/  b_assoc_buffers; } ;
struct address_space {struct list_head private_list; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  WRITE_SYNC_PLUG ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct list_head*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(spinlock_t *lock, struct list_head *list)
{
	struct buffer_head *bh;
	struct list_head tmp;
	struct address_space *mapping, *prev_mapping = NULL;
	int err = 0, err2;

	FUNC1(&tmp);

	FUNC13(lock);
	while (!FUNC10(list)) {
		bh = FUNC0(list->next);
		mapping = bh->b_assoc_map;
		FUNC2(bh);
		/* Avoid race with mark_buffer_dirty_inode() which does
		 * a lockless check and we rely on seeing the dirty bit */
		FUNC12();
		if (FUNC5(bh) || FUNC6(bh)) {
			FUNC9(&bh->b_assoc_buffers, &tmp);
			bh->b_assoc_map = mapping;
			if (FUNC5(bh)) {
				FUNC8(bh);
				FUNC14(lock);
				/*
				 * Ensure any pending I/O completes so that
				 * write_dirty_buffer() actually writes the
				 * current contents - it is a noop if I/O is
				 * still in flight on potentially older
				 * contents.
				 */
				FUNC16(bh, WRITE_SYNC_PLUG);

				/*
				 * Kick off IO for the previous mapping. Note
				 * that we will not run the very last mapping,
				 * wait_on_buffer() will do that for us
				 * through sync_buffer().
				 */
				if (prev_mapping && prev_mapping != mapping)
					FUNC3(prev_mapping);
				prev_mapping = mapping;

				FUNC4(bh);
				FUNC13(lock);
			}
		}
	}

	while (!FUNC10(&tmp)) {
		bh = FUNC0(tmp.prev);
		FUNC8(bh);
		mapping = bh->b_assoc_map;
		FUNC2(bh);
		/* Avoid race with mark_buffer_dirty_inode() which does
		 * a lockless check and we rely on seeing the dirty bit */
		FUNC12();
		if (FUNC5(bh)) {
			FUNC9(&bh->b_assoc_buffers,
				 &mapping->private_list);
			bh->b_assoc_map = mapping;
		}
		FUNC14(lock);
		FUNC15(bh);
		if (!FUNC7(bh))
			err = -EIO;
		FUNC4(bh);
		FUNC13(lock);
	}
	
	FUNC14(lock);
	err2 = FUNC11(lock, list);
	if (err)
		return err;
	else
		return err2;
}