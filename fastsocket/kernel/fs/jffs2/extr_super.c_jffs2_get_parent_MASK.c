#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct jffs2_inode_info {TYPE_1__* inocache; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  ino; int /*<<< orphan*/  pino_nlink; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct jffs2_inode_info* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct dentry *FUNC6(struct dentry *child)
{
	struct jffs2_inode_info *f;
	uint32_t pino;

	FUNC0(!FUNC3(child->d_inode->i_mode));

	f = FUNC2(child->d_inode);

	pino = f->inocache->pino_nlink;

	FUNC1("Parent of directory ino #%u is #%u\n",
		    f->inocache->ino, pino);

	return FUNC4(FUNC5(child->d_inode->i_sb, pino));
}