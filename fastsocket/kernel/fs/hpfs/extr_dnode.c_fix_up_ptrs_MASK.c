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
struct super_block {int dummy; } ;
struct quad_buffer_head {int dummy; } ;
struct hpfs_dirent {scalar_t__ down; } ;
struct dnode {scalar_t__ self; scalar_t__ up; scalar_t__ root_dnode; } ;
typedef  scalar_t__ dnode_secno ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 struct hpfs_dirent* FUNC3 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct quad_buffer_head*) ; 
 struct dnode* FUNC5 (struct super_block*,int /*<<< orphan*/ ,struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct quad_buffer_head*) ; 

__attribute__((used)) static void FUNC7(struct super_block *s, struct dnode *d)
{
	struct hpfs_dirent *de;
	struct hpfs_dirent *de_end = FUNC2(d);
	dnode_secno dno = d->self;
	for (de = FUNC3(d); de < de_end; de = FUNC1(de))
		if (de->down) {
			struct quad_buffer_head qbh;
			struct dnode *dd;
			if ((dd = FUNC5(s, FUNC0(de), &qbh))) {
				if (dd->up != dno || dd->root_dnode) {
					dd->up = dno;
					dd->root_dnode = 0;
					FUNC6(&qbh);
				}
				FUNC4(&qbh);
			}
		}
}