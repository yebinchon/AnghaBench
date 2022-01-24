#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nilfs_btnode_chkey_ctxt {scalar_t__ oldkey; scalar_t__ newkey; struct buffer_head* newbh; struct buffer_head* bh; } ;
struct inode {scalar_t__ i_blkbits; } ;
struct buffer_head {TYPE_1__* b_page; } ;
struct address_space {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  page_tree; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_5__ {scalar_t__ index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EEXIST ; 
 int GFP_NOFS ; 
 struct inode* FUNC1 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,unsigned long long,unsigned long long) ; 
 scalar_t__ PAGE_CACHE_SHIFT ; 
 int __GFP_HIGHMEM ; 
 int FUNC3 (struct address_space*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int FUNC6 (struct address_space*,scalar_t__,int /*<<< orphan*/ ,struct buffer_head**,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,scalar_t__,TYPE_1__*) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 

int FUNC14(struct address_space *btnc,
				    struct nilfs_btnode_chkey_ctxt *ctxt)
{
	struct buffer_head *obh, *nbh;
	struct inode *inode = FUNC1(btnc);
	__u64 oldkey = ctxt->oldkey, newkey = ctxt->newkey;
	int err;

	if (oldkey == newkey)
		return 0;

	obh = ctxt->bh;
	ctxt->newbh = NULL;

	if (inode->i_blkbits == PAGE_CACHE_SHIFT) {
		FUNC5(obh->b_page);
		/*
		 * We cannot call radix_tree_preload for the kernels older
		 * than 2.6.23, because it is not exported for modules.
		 */
retry:
		err = FUNC8(GFP_NOFS & ~__GFP_HIGHMEM);
		if (err)
			goto failed_unlock;
		/* BUG_ON(oldkey != obh->b_page->index); */
		if (FUNC12(oldkey != obh->b_page->index))
			FUNC2(obh->b_page,
				       "invalid oldkey %lld (newkey=%lld)",
				       (unsigned long long)oldkey,
				       (unsigned long long)newkey);

		FUNC10(&btnc->tree_lock);
		err = FUNC7(&btnc->page_tree, newkey, obh->b_page);
		FUNC11(&btnc->tree_lock);
		/*
		 * Note: page->index will not change to newkey until
		 * nilfs_btnode_commit_change_key() will be called.
		 * To protect the page in intermediate state, the page lock
		 * is held.
		 */
		FUNC9();
		if (!err)
			return 0;
		else if (err != -EEXIST)
			goto failed_unlock;

		err = FUNC3(btnc, newkey, newkey);
		if (!err)
			goto retry;
		/* fallback to copy mode */
		FUNC13(obh->b_page);
	}

	err = FUNC6(btnc, newkey, 0, &nbh, 1);
	if (FUNC4(!err)) {
		FUNC0(nbh == obh);
		ctxt->newbh = nbh;
	}
	return err;

 failed_unlock:
	FUNC13(obh->b_page);
	return err;
}