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
struct TYPE_4__ {scalar_t__ taken_empty_lebs; } ;
struct TYPE_3__ {int /*<<< orphan*/ * buf; } ;
struct ubifs_info {int bulk_read; TYPE_2__ lst; TYPE_1__ bu; scalar_t__ ro_media; } ;
struct super_block {int s_flags; struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int EROFS ; 
 int MS_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct ubifs_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_info*) ; 
 int FUNC8 (struct ubifs_info*) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb, int *flags, char *data)
{
	int err;
	struct ubifs_info *c = sb->s_fs_info;

	FUNC1("old flags %#lx, new flags %#x", sb->s_flags, *flags);

	err = FUNC6(c, data, 1);
	if (err) {
		FUNC4("invalid or unknown remount parameter");
		return err;
	}

	if ((sb->s_flags & MS_RDONLY) && !(*flags & MS_RDONLY)) {
		if (c->ro_media) {
			FUNC5("cannot re-mount due to prior errors");
			return -EROFS;
		}
		err = FUNC8(c);
		if (err)
			return err;
	} else if (!(sb->s_flags & MS_RDONLY) && (*flags & MS_RDONLY)) {
		if (c->ro_media) {
			FUNC5("cannot re-mount due to prior errors");
			return -EROFS;
		}
		FUNC7(c);
	}

	if (c->bulk_read == 1)
		FUNC0(c);
	else {
		FUNC1("disable bulk-read");
		FUNC2(c->bu.buf);
		c->bu.buf = NULL;
	}

	FUNC3(c->lst.taken_empty_lebs > 0);
	return 0;
}