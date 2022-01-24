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
struct hpfs_dirent {int down; int length; } ;
struct dnode {int first_free; int /*<<< orphan*/  self; } ;
typedef  scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hpfs_dirent*) ; 
 struct hpfs_dirent* FUNC1 (struct dnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,int /*<<< orphan*/ ,...) ; 
 TYPE_1__* FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *s, struct dnode *d, dnode_secno ptr)
{
	struct hpfs_dirent *de;
	if (!(de = FUNC1(d))) {
		FUNC2(s, "set_last_pointer: empty dnode %08x", d->self);
		return;
	}
	if (FUNC3(s)->sb_chk) {
		if (de->down) {
			FUNC2(s, "set_last_pointer: dnode %08x has already last pointer %08x",
				d->self, FUNC0(de));
			return;
		}
		if (de->length != 32) {
			FUNC2(s, "set_last_pointer: bad last dirent in dnode %08x", d->self);
			return;
		}
	}
	if (ptr) {
		if ((d->first_free += 4) > 2048) {
			FUNC2(s,"set_last_pointer: too long dnode %08x", d->self);
			d->first_free -= 4;
			return;
		}
		de->length = 36;
		de->down = 1;
		*(dnode_secno *)((char *)de + 32) = ptr;
	}
}