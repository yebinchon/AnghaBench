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
typedef  void* u32 ;
struct superblock_security_struct {int flags; int /*<<< orphan*/  lock; void* mntpoint_sid; void* sid; int /*<<< orphan*/  behavior; int /*<<< orphan*/  def_sid; int /*<<< orphan*/  list; } ;
struct super_block {TYPE_1__* s_root; struct superblock_security_struct* s_security; } ;
struct inode_security_struct {void* sid; } ;
struct inode {struct inode_security_struct* i_security; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONTEXT_MNT ; 
 int FSCONTEXT_MNT ; 
 int ROOTCONTEXT_MNT ; 
 int SE_SBINITIALIZED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  sb_security_lock ; 
 int FUNC6 (struct super_block const*,struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ss_initialized ; 
 int /*<<< orphan*/  superblock_security_head ; 

__attribute__((used)) static int FUNC9(const struct super_block *oldsb,
					struct super_block *newsb)
{
	const struct superblock_security_struct *oldsbsec = oldsb->s_security;
	struct superblock_security_struct *newsbsec = newsb->s_security;

	int set_fscontext =	(oldsbsec->flags & FSCONTEXT_MNT);
	int set_context =	(oldsbsec->flags & CONTEXT_MNT);
	int set_rootcontext =	(oldsbsec->flags & ROOTCONTEXT_MNT);

	/*
	 * if the parent was able to be mounted it clearly had no special lsm
	 * mount options.  thus we can safely put this sb on the list and deal
	 * with it later
	 */
	if (!ss_initialized) {
		FUNC7(&sb_security_lock);
		if (FUNC2(&newsbsec->list))
			FUNC1(&newsbsec->list, &superblock_security_head);
		FUNC8(&sb_security_lock);
		return 0;
	}

	/* how can we clone if the old one wasn't set up?? */
	FUNC0(!(oldsbsec->flags & SE_SBINITIALIZED));

	/* if fs is reusing a sb, make sure that the contexts match */
	if (newsbsec->flags & SE_SBINITIALIZED)
		return FUNC6(oldsb, newsb);

	FUNC3(&newsbsec->lock);

	newsbsec->flags = oldsbsec->flags;

	newsbsec->sid = oldsbsec->sid;
	newsbsec->def_sid = oldsbsec->def_sid;
	newsbsec->behavior = oldsbsec->behavior;

	if (set_context) {
		u32 sid = oldsbsec->mntpoint_sid;

		if (!set_fscontext)
			newsbsec->sid = sid;
		if (!set_rootcontext) {
			struct inode *newinode = newsb->s_root->d_inode;
			struct inode_security_struct *newisec = newinode->i_security;
			newisec->sid = sid;
		}
		newsbsec->mntpoint_sid = sid;
	}
	if (set_rootcontext) {
		const struct inode *oldinode = oldsb->s_root->d_inode;
		const struct inode_security_struct *oldisec = oldinode->i_security;
		struct inode *newinode = newsb->s_root->d_inode;
		struct inode_security_struct *newisec = newinode->i_security;

		newisec->sid = oldisec->sid;
	}

	FUNC5(newsb);
	FUNC4(&newsbsec->lock);
	return 0;
}