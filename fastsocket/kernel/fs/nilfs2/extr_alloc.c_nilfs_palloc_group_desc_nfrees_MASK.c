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
struct nilfs_palloc_group_desc {int /*<<< orphan*/  pg_nfrees; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC4(struct inode *inode, unsigned long group,
			       const struct nilfs_palloc_group_desc *desc)
{
	unsigned long nfree;

	FUNC2(FUNC1(inode, group));
	nfree = FUNC0(desc->pg_nfrees);
	FUNC3(FUNC1(inode, group));
	return nfree;
}