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
struct ocfs2_dir_lookup_result {int /*<<< orphan*/ * member_0; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int EEXIST ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long long,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char const*,int,struct inode*,struct ocfs2_dir_lookup_result*) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_dir_lookup_result*) ; 

int FUNC5(struct inode *dir,
			      const char *name,
			      int namelen)
{
	int ret;
	struct ocfs2_dir_lookup_result lookup = { NULL, };

	FUNC1("dir %llu, name '%.*s'\n",
		   (unsigned long long)FUNC0(dir)->ip_blkno, namelen, name);

	ret = -EEXIST;
	if (FUNC3(name, namelen, dir, &lookup) == 0)
		goto bail;

	ret = 0;
bail:
	FUNC4(&lookup);

	FUNC2(ret);
	return ret;
}