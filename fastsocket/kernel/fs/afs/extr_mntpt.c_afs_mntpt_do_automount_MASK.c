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
struct vfsmount {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dentry {int /*<<< orphan*/  d_sb; TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct afs_super_info {TYPE_4__* volume; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__* cell; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {size_t i_size; int /*<<< orphan*/  i_mapping; } ;

/* Variables and functions */
 scalar_t__ AFSVL_RWVOL ; 
 struct afs_super_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 struct vfsmount* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int PAGE_SIZE ; 
 int FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  afs_fs_type ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 
 struct page* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 struct vfsmount* FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static struct vfsmount *FUNC19(struct dentry *mntpt)
{
	struct afs_super_info *super;
	struct vfsmount *mnt;
	struct page *page = NULL;
	size_t size;
	char *buf, *devname = NULL, *options = NULL;
	int ret;

	FUNC7("{%s}", mntpt->d_name.name);

	FUNC1(!mntpt->d_inode);

	ret = -EINVAL;
	size = mntpt->d_inode->i_size;
	if (size > PAGE_SIZE - 1)
		goto error;

	ret = -ENOMEM;
	devname = (char *) FUNC10(GFP_KERNEL);
	if (!devname)
		goto error;

	options = (char *) FUNC10(GFP_KERNEL);
	if (!options)
		goto error;

	/* read the contents of the AFS special symlink */
	page = FUNC15(mntpt->d_inode->i_mapping, 0, NULL);
	if (FUNC3(page)) {
		ret = FUNC4(page);
		goto error;
	}

	ret = -EIO;
	if (FUNC5(page))
		goto error;

	buf = FUNC11(page, KM_USER0);
	FUNC13(devname, buf, size);
	FUNC12(buf, KM_USER0);
	FUNC14(page);
	page = NULL;

	/* work out what options we want */
	super = FUNC0(mntpt->d_sb);
	FUNC13(options, "cell=", 5);
	FUNC17(options + 5, super->volume->cell->name);
	if (super->volume->type == AFSVL_RWVOL)
		FUNC16(options, ",rwpath");

	/* try and do the mount */
	FUNC6("--- attempting mount %s -o %s ---", devname, options);
	mnt = FUNC18(&afs_fs_type, 0, devname, options);
	FUNC6("--- mount result %p ---", mnt);

	FUNC9((unsigned long) devname);
	FUNC9((unsigned long) options);
	FUNC8(" = %p", mnt);
	return mnt;

error:
	if (page)
		FUNC14(page);
	if (devname)
		FUNC9((unsigned long) devname);
	if (options)
		FUNC9((unsigned long) options);
	FUNC8(" = %d", ret);
	return FUNC2(ret);
}