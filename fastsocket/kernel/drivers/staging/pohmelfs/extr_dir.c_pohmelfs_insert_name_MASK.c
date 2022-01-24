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
struct pohmelfs_name {int /*<<< orphan*/  sync_create_entry; scalar_t__ len; } ;
struct pohmelfs_inode {int /*<<< orphan*/  sync_create_list; int /*<<< orphan*/  total_len; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pohmelfs_name* FUNC1 (struct pohmelfs_inode*,struct pohmelfs_name*) ; 

__attribute__((used)) static int FUNC2(struct pohmelfs_inode *parent, struct pohmelfs_name *n)
{
	struct pohmelfs_name *name;

	name = FUNC1(parent, n);
	if (name)
		return -EEXIST;

	parent->total_len += n->len;
	FUNC0(&n->sync_create_entry, &parent->sync_create_list);

	return 0;
}