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
struct inode {int /*<<< orphan*/  inotify_mutex; } ;
struct audit_tree {int /*<<< orphan*/  same_root; struct audit_chunk* root; int /*<<< orphan*/  chunks; scalar_t__ goner; } ;
struct audit_chunk {int dead; int /*<<< orphan*/  trees; TYPE_1__* owners; int /*<<< orphan*/  watch; } ;
struct TYPE_2__ {unsigned int index; int /*<<< orphan*/  list; struct audit_tree* owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 int IN_DELETE_SELF ; 
 int IN_IGNORED ; 
 struct audit_chunk* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_tree*) ; 
 int /*<<< orphan*/  hash_lock ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct audit_chunk*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rtree_ih ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct inode *inode, struct audit_tree *tree)
{
	struct audit_chunk *chunk = FUNC0(1);
	if (!chunk)
		return -ENOMEM;

	if (FUNC3(rtree_ih, &chunk->watch, inode, IN_IGNORED | IN_DELETE_SELF) < 0) {
		FUNC1(chunk);
		return -ENOSPC;
	}

	FUNC7(&inode->inotify_mutex);
	FUNC10(&hash_lock);
	if (tree->goner) {
		FUNC11(&hash_lock);
		chunk->dead = 1;
		FUNC4(&chunk->watch);
		FUNC8(&inode->inotify_mutex);
		FUNC9(&chunk->watch);
		return 0;
	}
	chunk->owners[0].index = (1U << 31);
	chunk->owners[0].owner = tree;
	FUNC2(tree);
	FUNC6(&chunk->owners[0].list, &tree->chunks);
	if (!tree->root) {
		tree->root = chunk;
		FUNC6(&tree->same_root, &chunk->trees);
	}
	FUNC5(chunk);
	FUNC11(&hash_lock);
	FUNC8(&inode->inotify_mutex);
	return 0;
}