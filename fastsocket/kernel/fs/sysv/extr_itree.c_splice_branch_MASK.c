#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; } ;
struct TYPE_6__ {scalar_t__ key; scalar_t__ bh; scalar_t__* p; } ;
typedef  TYPE_1__ Indirect ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME_SEC ; 
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  pointers_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC9(struct inode *inode,
				Indirect chain[],
				Indirect *where,
				int num)
{
	int i;

	/* Verify that place we are splicing to is still there and vacant */
	FUNC7(&pointers_lock);
	if (!FUNC6(chain, where-1) || *where->p)
		goto changed;
	*where->p = where->key;
	FUNC8(&pointers_lock);

	inode->i_ctime = CURRENT_TIME_SEC;

	/* had we spliced it onto indirect block? */
	if (where->bh)
		FUNC2(where->bh, inode);

	if (FUNC0(inode))
		FUNC5(inode);
	else
		FUNC3(inode);
	return 0;

changed:
	FUNC8(&pointers_lock);
	for (i = 1; i < num; i++)
		FUNC1(where[i].bh);
	for (i = 0; i < num; i++)
		FUNC4(inode->i_sb, where[i].key);
	return -EAGAIN;
}