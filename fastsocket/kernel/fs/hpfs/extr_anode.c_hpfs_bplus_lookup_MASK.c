#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct hpfs_inode_info {unsigned int i_file_sec; unsigned int i_disk_sec; unsigned int i_n_secs; } ;
struct buffer_head {int dummy; } ;
struct TYPE_7__ {TYPE_2__* external; TYPE_1__* internal; } ;
struct bplus_header {int n_used_nodes; TYPE_3__ u; scalar_t__ internal; } ;
struct anode {struct bplus_header btree; } ;
typedef  int secno ;
typedef  int anode_secno ;
struct TYPE_8__ {scalar_t__ sb_chk; } ;
struct TYPE_6__ {unsigned int file_secno; unsigned int length; unsigned int disk_secno; } ;
struct TYPE_5__ {unsigned int file_secno; int down; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 scalar_t__ FUNC1 (struct super_block*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,unsigned int,int) ; 
 struct hpfs_inode_info* FUNC3 (struct inode*) ; 
 struct anode* FUNC4 (struct super_block*,int,struct buffer_head**) ; 
 TYPE_4__* FUNC5 (struct super_block*) ; 
 scalar_t__ FUNC6 (struct super_block*,int,int*,int*,char*) ; 

secno FUNC7(struct super_block *s, struct inode *inode,
		   struct bplus_header *btree, unsigned sec,
		   struct buffer_head *bh)
{
	anode_secno a = -1;
	struct anode *anode;
	int i;
	int c1, c2 = 0;
	go_down:
	if (FUNC5(s)->sb_chk) if (FUNC6(s, a, &c1, &c2, "hpfs_bplus_lookup")) return -1;
	if (btree->internal) {
		for (i = 0; i < btree->n_used_nodes; i++)
			if (btree->u.internal[i].file_secno > sec) {
				a = btree->u.internal[i].down;
				FUNC0(bh);
				if (!(anode = FUNC4(s, a, &bh))) return -1;
				btree = &anode->btree;
				goto go_down;
			}
		FUNC2(s, "sector %08x not found in internal anode %08x", sec, a);
		FUNC0(bh);
		return -1;
	}
	for (i = 0; i < btree->n_used_nodes; i++)
		if (btree->u.external[i].file_secno <= sec &&
		    btree->u.external[i].file_secno + btree->u.external[i].length > sec) {
			a = btree->u.external[i].disk_secno + sec - btree->u.external[i].file_secno;
			if (FUNC5(s)->sb_chk) if (FUNC1(s, a, 1, "data")) {
				FUNC0(bh);
				return -1;
			}
			if (inode) {
				struct hpfs_inode_info *hpfs_inode = FUNC3(inode);
				hpfs_inode->i_file_sec = btree->u.external[i].file_secno;
				hpfs_inode->i_disk_sec = btree->u.external[i].disk_secno;
				hpfs_inode->i_n_secs = btree->u.external[i].length;
			}
			FUNC0(bh);
			return a;
		}
	FUNC2(s, "sector %08x not found in external anode %08x", sec, a);
	FUNC0(bh);
	return -1;
}