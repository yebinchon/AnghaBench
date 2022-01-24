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
struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {struct super_block* i_sb; int /*<<< orphan*/  i_ino; } ;
struct TYPE_6__ {char* name; } ;
struct dentry {TYPE_2__ d_name; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  scalar_t__ befs_off_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
struct TYPE_5__ {int /*<<< orphan*/  ds; } ;
struct TYPE_8__ {TYPE_1__ i_data; } ;
struct TYPE_7__ {scalar_t__ nls; } ;

/* Variables and functions */
 int BEFS_BT_NOT_FOUND ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int BEFS_OK ; 
 TYPE_3__* FUNC1 (struct super_block*) ; 
 int ENODATA ; 
 int ENOENT ; 
 struct dentry* FUNC2 (struct inode*) ; 
 struct dentry* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 (struct super_block*,int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,char*,...) ; 
 struct inode* FUNC7 (struct super_block*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct super_block*,char const*,int /*<<< orphan*/ ,char**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

__attribute__((used)) static struct dentry *
FUNC13(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode = NULL;
	struct super_block *sb = dir->i_sb;
	befs_data_stream *ds = &FUNC0(dir)->i_data.ds;
	befs_off_t offset;
	int ret;
	int utfnamelen;
	char *utfname;
	const char *name = dentry->d_name.name;

	FUNC6(sb, "---> befs_lookup() "
		   "name %s inode %ld", dentry->d_name.name, dir->i_ino);

	/* Convert to UTF-8 */
	if (FUNC1(sb)->nls) {
		ret =
		    FUNC8(sb, name, FUNC12(name), &utfname, &utfnamelen);
		if (ret < 0) {
			FUNC6(sb, "<--- befs_lookup() ERROR");
			return FUNC3(ret);
		}
		ret = FUNC5(sb, ds, utfname, &offset);
		FUNC11(utfname);

	} else {
		ret = FUNC5(sb, ds, dentry->d_name.name, &offset);
	}

	if (ret == BEFS_BT_NOT_FOUND) {
		FUNC6(sb, "<--- befs_lookup() %s not found",
			   dentry->d_name.name);
		return FUNC3(-ENOENT);

	} else if (ret != BEFS_OK || offset == 0) {
		FUNC9(sb, "<--- befs_lookup() Error");
		return FUNC3(-ENODATA);
	}

	inode = FUNC7(dir->i_sb, (ino_t) offset);
	if (FUNC4(inode))
		return FUNC2(inode);

	FUNC10(dentry, inode);

	FUNC6(sb, "<--- befs_lookup()");

	return NULL;
}