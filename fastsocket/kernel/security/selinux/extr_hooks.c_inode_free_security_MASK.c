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
struct superblock_security_struct {int /*<<< orphan*/  isec_lock; } ;
struct inode_security_struct {int /*<<< orphan*/  list; } ;
struct inode {struct inode_security_struct* i_security; TYPE_1__* i_sb; } ;
struct TYPE_2__ {struct superblock_security_struct* s_security; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct inode_security_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sel_inode_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct inode *inode)
{
	struct inode_security_struct *isec = inode->i_security;
	struct superblock_security_struct *sbsec = inode->i_sb->s_security;

	FUNC3(&sbsec->isec_lock);
	if (!FUNC2(&isec->list))
		FUNC1(&isec->list);
	FUNC4(&sbsec->isec_lock);

	inode->i_security = NULL;
	FUNC0(sel_inode_cache, isec);
}