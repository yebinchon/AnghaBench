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
struct super_block {int dummy; } ;
struct TYPE_2__ {int n_free_nodes; int first_free; } ;
struct fnode {int ea_offs; TYPE_1__ btree; int /*<<< orphan*/  magic; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  secno ;
typedef  int /*<<< orphan*/  fnode_secno ;

/* Variables and functions */
 int /*<<< orphan*/  FNODE_ALLOC_FWD ; 
 int /*<<< orphan*/  FNODE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 struct fnode* FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct fnode*,int /*<<< orphan*/ ,int) ; 

struct fnode *FUNC4(struct super_block *s, secno near, fnode_secno *fno,
			  struct buffer_head **bh)
{
	struct fnode *f;
	if (!(*fno = FUNC0(s, near, 1, FNODE_ALLOC_FWD, 1))) return NULL;
	if (!(f = FUNC2(s, *fno, bh))) {
		FUNC1(s, *fno, 1);
		return NULL;
	}	
	FUNC3(f, 0, 512);
	f->magic = FNODE_MAGIC;
	f->ea_offs = 0xc4;
	f->btree.n_free_nodes = 8;
	f->btree.first_free = 8;
	return f;
}