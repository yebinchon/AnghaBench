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
struct superblock_security_struct {void* mntpoint_sid; int /*<<< orphan*/  def_sid; void* sid; struct super_block* sb; int /*<<< orphan*/  isec_lock; int /*<<< orphan*/  isec_head; int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct super_block {struct superblock_security_struct* s_security; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SECINITSID_FILE ; 
 void* SECINITSID_UNLABELED ; 
 struct superblock_security_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb)
{
	struct superblock_security_struct *sbsec;

	sbsec = FUNC1(sizeof(struct superblock_security_struct), GFP_KERNEL);
	if (!sbsec)
		return -ENOMEM;

	FUNC2(&sbsec->lock);
	FUNC0(&sbsec->list);
	FUNC0(&sbsec->isec_head);
	FUNC3(&sbsec->isec_lock);
	sbsec->sb = sb;
	sbsec->sid = SECINITSID_UNLABELED;
	sbsec->def_sid = SECINITSID_FILE;
	sbsec->mntpoint_sid = SECINITSID_UNLABELED;
	sb->s_security = sbsec;

	return 0;
}