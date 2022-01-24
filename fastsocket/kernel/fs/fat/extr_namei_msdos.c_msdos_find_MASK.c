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
struct TYPE_4__ {scalar_t__ dotsOK; } ;
struct msdos_sb_info {TYPE_2__ options; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct fat_slot_info {int /*<<< orphan*/  bh; TYPE_1__* de; } ;
struct TYPE_3__ {int attr; } ;

/* Variables and functions */
 int ATTR_HIDDEN ; 
 int ENOENT ; 
 int MSDOS_NAME ; 
 struct msdos_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,unsigned char*,struct fat_slot_info*) ; 
 int FUNC3 (unsigned char const*,int,unsigned char*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC4(struct inode *dir, const unsigned char *name, int len,
		      struct fat_slot_info *sinfo)
{
	struct msdos_sb_info *sbi = FUNC0(dir->i_sb);
	unsigned char msdos_name[MSDOS_NAME];
	int err;

	err = FUNC3(name, len, msdos_name, &sbi->options);
	if (err)
		return -ENOENT;

	err = FUNC2(dir, msdos_name, sinfo);
	if (!err && sbi->options.dotsOK) {
		if (name[0] == '.') {
			if (!(sinfo->de->attr & ATTR_HIDDEN))
				err = -ENOENT;
		} else {
			if (sinfo->de->attr & ATTR_HIDDEN)
				err = -ENOENT;
		}
		if (err)
			FUNC1(sinfo->bh);
	}
	return err;
}