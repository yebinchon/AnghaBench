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
struct quad_buffer_head {int dummy; } ;
struct dnode {int first_free; int* dirent; int /*<<< orphan*/  self; int /*<<< orphan*/  magic; } ;
typedef  int /*<<< orphan*/  secno ;
typedef  int /*<<< orphan*/  dnode_secno ;
struct TYPE_2__ {int /*<<< orphan*/  sb_dmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNODE_MAGIC ; 
 scalar_t__ FREE_DNODES_ADD ; 
 int /*<<< orphan*/  FUNC0 (struct super_block*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct dnode* FUNC4 (struct super_block*,int /*<<< orphan*/ ,struct quad_buffer_head*) ; 
 TYPE_1__* FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct dnode*,int /*<<< orphan*/ ,int) ; 

struct dnode *FUNC7(struct super_block *s, secno near,
			 dnode_secno *dno, struct quad_buffer_head *qbh,
			 int lock)
{
	struct dnode *d;
	if (FUNC2(s, FUNC5(s)->sb_dmap) > FREE_DNODES_ADD) {
		if (!(*dno = FUNC0(s, near, lock)))
			if (!(*dno = FUNC1(s, near, 4, 0, lock))) return NULL;
	} else {
		if (!(*dno = FUNC1(s, near, 4, 0, lock)))
			if (!(*dno = FUNC0(s, near, lock))) return NULL;
	}
	if (!(d = FUNC4(s, *dno, qbh))) {
		FUNC3(s, *dno);
		return NULL;
	}
	FUNC6(d, 0, 2048);
	d->magic = DNODE_MAGIC;
	d->first_free = 52;
	d->dirent[0] = 32;
	d->dirent[2] = 8;
	d->dirent[30] = 1;
	d->dirent[31] = 255;
	d->self = *dno;
	return d;
}