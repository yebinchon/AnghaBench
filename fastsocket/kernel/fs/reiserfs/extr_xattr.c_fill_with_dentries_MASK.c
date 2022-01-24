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
typedef  int /*<<< orphan*/  u64 ;
struct reiserfs_dentry_buf {scalar_t__ count; struct dentry** dentries; TYPE_4__* xadir; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_2__ d_name; int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_inode; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_3__ d_name; TYPE_1__* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_mutex; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry**) ; 
 int EIO ; 
 int ENOSPC ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (char const*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(void *buf, const char *name, int namelen, loff_t offset,
		    u64 ino, unsigned int d_type)
{
	struct reiserfs_dentry_buf *dbuf = buf;
	struct dentry *dentry;
	FUNC3(!FUNC6(&dbuf->xadir->d_inode->i_mutex));

	if (dbuf->count == FUNC0(dbuf->dentries))
		return -ENOSPC;

	if (name[0] == '.' && (name[1] == '\0' ||
			       (name[1] == '.' && name[2] == '\0')))
		return 0;

	dentry = FUNC5(name, dbuf->xadir, namelen);
	if (FUNC1(dentry)) {
		return FUNC2(dentry);
	} else if (!dentry->d_inode) {
		/* A directory entry exists, but no file? */
		FUNC7(dentry->d_sb, "xattr-20003",
			       "Corrupted directory: xattr %s listed but "
			       "not found for file %s.\n",
			       dentry->d_name.name, dbuf->xadir->d_name.name);
		FUNC4(dentry);
		return -EIO;
	}

	dbuf->dentries[dbuf->count++] = dentry;
	return 0;
}