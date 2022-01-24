#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct dentry {struct super_block* d_sb; int /*<<< orphan*/  d_inode; } ;
typedef  int befs_off_t ;
struct TYPE_8__ {int size; } ;
struct TYPE_6__ {char* symlink; TYPE_3__ ds; } ;
struct TYPE_7__ {int i_flags; TYPE_1__ i_data; } ;
typedef  TYPE_2__ befs_inode_info ;
typedef  TYPE_3__ befs_data_stream ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int BEFS_LONG_SYMLINK ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*) ; 
 int FUNC4 (struct super_block*,TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nameidata*,char*) ; 

__attribute__((used)) static void *
FUNC8(struct dentry *dentry, struct nameidata *nd)
{
	befs_inode_info *befs_ino = FUNC0(dentry->d_inode);
	char *link;

	if (befs_ino->i_flags & BEFS_LONG_SYMLINK) {
		struct super_block *sb = dentry->d_sb;
		befs_data_stream *data = &befs_ino->i_data.ds;
		befs_off_t len = data->size;

		FUNC2(sb, "Follow long symlink");

		link = FUNC6(len, GFP_NOFS);
		if (!link) {
			link = FUNC1(-ENOMEM);
		} else if (FUNC4(sb, data, link, len) != len) {
			FUNC5(link);
			FUNC3(sb, "Failed to read entire long symlink");
			link = FUNC1(-EIO);
		} else {
			link[len - 1] = '\0';
		}
	} else {
		link = befs_ino->i_data.symlink;
	}

	FUNC7(nd, link);
	return NULL;
}