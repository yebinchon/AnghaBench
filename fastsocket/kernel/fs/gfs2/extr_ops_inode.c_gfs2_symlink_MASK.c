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
struct inode {int dummy; } ;
struct TYPE_2__ {int sb_bsize; } ;
struct gfs2_sbd {TYPE_1__ sd_sb; } ;
struct gfs2_dinode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 struct gfs2_sbd* FUNC0 (struct inode*) ; 
 int S_IFLNK ; 
 int S_IRWXUGO ; 
 int FUNC1 (struct inode*,struct dentry*,int,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct inode *dir, struct dentry *dentry,
			const char *symname)
{
	struct gfs2_sbd *sdp = FUNC0(dir);
	int size;

	size = FUNC2(symname);
	if (size > sdp->sd_sb.sb_bsize - sizeof(struct gfs2_dinode) - 1)
		return -ENAMETOOLONG;

	return FUNC1(dir, dentry, S_IFLNK | S_IRWXUGO, 0, symname, size, 0);
}