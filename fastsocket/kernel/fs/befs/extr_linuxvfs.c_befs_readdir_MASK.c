#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; struct super_block* i_sb; } ;
struct TYPE_10__ {TYPE_3__* dentry; } ;
struct file {int /*<<< orphan*/  f_pos; TYPE_4__ f_path; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int (* filldir_t ) (void*,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char) ;
typedef  scalar_t__ befs_off_t ;
typedef  int /*<<< orphan*/  befs_data_stream ;
struct TYPE_7__ {int /*<<< orphan*/  ds; } ;
struct TYPE_12__ {TYPE_1__ i_data; } ;
struct TYPE_11__ {scalar_t__ nls; } ;
struct TYPE_8__ {char* name; } ;
struct TYPE_9__ {TYPE_2__ d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int BEFS_BT_EMPTY ; 
 int BEFS_BT_END ; 
 int BEFS_ERR ; 
 TYPE_6__* FUNC0 (struct inode*) ; 
 int BEFS_NAME_LEN ; 
 TYPE_5__* FUNC1 (struct super_block*) ; 
 unsigned char DT_UNKNOWN ; 
 int EIO ; 
 int FUNC2 (struct super_block*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*,size_t*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,char*,size_t,char**,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(struct file *filp, void *dirent, filldir_t filldir)
{
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct super_block *sb = inode->i_sb;
	befs_data_stream *ds = &FUNC0(inode)->i_data.ds;
	befs_off_t value;
	int result;
	size_t keysize;
	unsigned char d_type;
	char keybuf[BEFS_NAME_LEN + 1];
	char *nlsname;
	int nlsnamelen;
	const char *dirname = filp->f_path.dentry->d_name.name;

	FUNC3(sb, "---> befs_readdir() "
		   "name %s, inode %ld, filp->f_pos %Ld",
		   dirname, inode->i_ino, filp->f_pos);

	result = FUNC2(sb, ds, filp->f_pos, BEFS_NAME_LEN + 1,
				 keybuf, &keysize, &value);

	if (result == BEFS_ERR) {
		FUNC3(sb, "<--- befs_readdir() ERROR");
		FUNC4(sb, "IO error reading %s (inode %lu)",
			   dirname, inode->i_ino);
		return -EIO;

	} else if (result == BEFS_BT_END) {
		FUNC3(sb, "<--- befs_readdir() END");
		return 0;

	} else if (result == BEFS_BT_EMPTY) {
		FUNC3(sb, "<--- befs_readdir() Empty directory");
		return 0;
	}

	d_type = DT_UNKNOWN;

	/* Convert to NLS */
	if (FUNC1(sb)->nls) {
		result =
		    FUNC5(sb, keybuf, keysize, &nlsname, &nlsnamelen);
		if (result < 0) {
			FUNC3(sb, "<--- befs_readdir() ERROR");
			return result;
		}
		result = filldir(dirent, nlsname, nlsnamelen, filp->f_pos,
				 (ino_t) value, d_type);
		FUNC6(nlsname);

	} else {
		result = filldir(dirent, keybuf, keysize, filp->f_pos,
				 (ino_t) value, d_type);
	}

	filp->f_pos++;

	FUNC3(sb, "<--- befs_readdir() filp->f_pos %Ld", filp->f_pos);

	return 0;
}