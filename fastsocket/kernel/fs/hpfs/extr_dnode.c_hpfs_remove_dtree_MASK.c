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
struct hpfs_dirent {scalar_t__ down; scalar_t__ last; int /*<<< orphan*/  first; } ;
struct dnode {int dummy; } ;
typedef  int dnode_secno ;

/* Variables and functions */
 int FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC2 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct quad_buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int) ; 
 struct dnode* FUNC6 (struct super_block*,int,struct quad_buffer_head*) ; 

void FUNC7(struct super_block *s, dnode_secno dno)
{
	struct quad_buffer_head qbh;
	struct dnode *dnode;
	struct hpfs_dirent *de;
	dnode_secno d1, d2, rdno = dno;
	while (1) {
		if (!(dnode = FUNC6(s, dno, &qbh))) return;
		de = FUNC2(dnode);
		if (de->last) {
			if (de->down) d1 = FUNC0(de);
			else goto error;
			FUNC3(&qbh);
			FUNC5(s, dno);
			dno = d1;
		} else break;
	}
	if (!de->first) goto error;
	d1 = de->down ? FUNC0(de) : 0;
	de = FUNC1(de);
	if (!de->last) goto error;
	d2 = de->down ? FUNC0(de) : 0;
	FUNC3(&qbh);
	FUNC5(s, dno);
	do {
		while (d1) {
			if (!(dnode = FUNC6(s, dno = d1, &qbh))) return;
			de = FUNC2(dnode);
			if (!de->last) goto error;
			d1 = de->down ? FUNC0(de) : 0;
			FUNC3(&qbh);
			FUNC5(s, dno);
		}
		d1 = d2;
		d2 = 0;
	} while (d1);
	return;
	error:
	FUNC3(&qbh);
	FUNC5(s, dno);
	FUNC4(s, "directory %08x is corrupted or not empty", rdno);
}