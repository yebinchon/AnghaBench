#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct page {TYPE_1__* mapping; } ;
struct io_failure_record {scalar_t__ start; int /*<<< orphan*/  failed_mirror; int /*<<< orphan*/  logical; int /*<<< orphan*/  len; scalar_t__ in_validation; int /*<<< orphan*/  this_mirror; } ;
struct inode {int dummy; } ;
struct extent_state {scalar_t__ start; } ;
struct btrfs_mapping_tree {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {TYPE_3__* root; TYPE_4__ io_tree; int /*<<< orphan*/  io_failure_tree; } ;
struct TYPE_8__ {TYPE_2__* fs_info; } ;
struct TYPE_7__ {struct btrfs_mapping_tree mapping_tree; } ;
struct TYPE_6__ {struct inode* host; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  EXTENT_DIRTY ; 
 int /*<<< orphan*/  EXTENT_LOCKED ; 
 int FUNC2 (struct btrfs_mapping_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct extent_state* FUNC4 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,struct io_failure_record*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int FUNC8 (struct btrfs_mapping_tree*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(u64 start, struct page *page)
{
	u64 private;
	u64 private_failure;
	struct io_failure_record *failrec;
	struct btrfs_mapping_tree *map_tree;
	struct extent_state *state;
	int num_copies;
	int did_repair = 0;
	int ret;
	struct inode *inode = page->mapping->host;

	private = 0;
	ret = FUNC3(&FUNC0(inode)->io_failure_tree, &private,
				(u64)-1, 1, EXTENT_DIRTY, 0);
	if (!ret)
		return 0;

	ret = FUNC6(&FUNC0(inode)->io_failure_tree, start,
				&private_failure);
	if (ret)
		return 0;

	failrec = (struct io_failure_record *)(unsigned long) private_failure;
	FUNC1(!failrec->this_mirror);

	if (failrec->in_validation) {
		/* there was no real error, just free the record */
		FUNC7("clean_io_failure: freeing dummy error at %llu\n",
			 failrec->start);
		did_repair = 1;
		goto out;
	}

	FUNC9(&FUNC0(inode)->io_tree.lock);
	state = FUNC4(&FUNC0(inode)->io_tree,
					    failrec->start,
					    EXTENT_LOCKED);
	FUNC10(&FUNC0(inode)->io_tree.lock);

	if (state && state->start == failrec->start) {
		map_tree = &FUNC0(inode)->root->fs_info->mapping_tree;
		num_copies = FUNC2(map_tree, failrec->logical,
						failrec->len);
		if (num_copies > 1)  {
			ret = FUNC8(map_tree, start, failrec->len,
						failrec->logical, page,
						failrec->failed_mirror);
			did_repair = !ret;
		}
	}

out:
	if (!ret)
		ret = FUNC5(inode, failrec, did_repair);

	return ret;
}