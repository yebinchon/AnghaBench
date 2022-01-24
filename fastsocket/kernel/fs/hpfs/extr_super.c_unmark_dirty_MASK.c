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
struct super_block {int s_flags; } ;
struct hpfs_spare_block {int dirty; int old_wrote; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int sb_chkdsk; int sb_was_error; } ;

/* Variables and functions */
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 struct hpfs_spare_block* FUNC1 (struct super_block*,int,struct buffer_head**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC4(struct super_block *s)
{
	struct buffer_head *bh;
	struct hpfs_spare_block *sb;
	if (s->s_flags & MS_RDONLY) return;
	if ((sb = FUNC1(s, 17, &bh, 0))) {
		sb->dirty = FUNC2(s)->sb_chkdsk > 1 - FUNC2(s)->sb_was_error;
		sb->old_wrote = FUNC2(s)->sb_chkdsk >= 2 && !FUNC2(s)->sb_was_error;
		FUNC3(bh);
		FUNC0(bh);
	}
}