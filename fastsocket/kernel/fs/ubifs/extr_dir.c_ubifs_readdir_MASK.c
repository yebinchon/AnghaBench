#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  sqnum; } ;
struct ubifs_dent_node {char* name; int /*<<< orphan*/  key; int /*<<< orphan*/  type; int /*<<< orphan*/  inum; int /*<<< orphan*/  nlen; TYPE_3__ ch; } ;
struct qstr {char* name; int len; } ;
struct inode {scalar_t__ i_ino; TYPE_1__* i_sb; } ;
struct TYPE_7__ {TYPE_5__* dentry; } ;
struct file {int f_pos; struct ubifs_dent_node* private_data; TYPE_2__ f_path; } ;
typedef  int (* filldir_t ) (void*,char*,int,int,scalar_t__,int /*<<< orphan*/ ) ;
struct TYPE_10__ {struct inode* d_inode; } ;
struct TYPE_9__ {scalar_t__ creat_sqnum; } ;
struct TYPE_6__ {struct ubifs_info* s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DT_DIR ; 
 int ENOENT ; 
 scalar_t__ FUNC0 (struct ubifs_dent_node*) ; 
 int FUNC1 (struct ubifs_dent_node*) ; 
 int UBIFS_S_KEY_HASH_MASK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*,union ubifs_key*,scalar_t__,int) ; 
 void* FUNC5 (struct ubifs_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ubifs_info*,int /*<<< orphan*/ *,union ubifs_key*) ; 
 int /*<<< orphan*/  FUNC7 (struct ubifs_dent_node*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ubifs_info*,union ubifs_key*,scalar_t__) ; 
 scalar_t__ FUNC11 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 TYPE_4__* FUNC14 (struct inode*) ; 
 struct ubifs_dent_node* FUNC15 (struct ubifs_info*,union ubifs_key*,struct qstr*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct file *file, void *dirent, filldir_t filldir)
{
	int err, over = 0;
	struct qstr nm;
	union ubifs_key key;
	struct ubifs_dent_node *dent;
	struct inode *dir = file->f_path.dentry->d_inode;
	struct ubifs_info *c = dir->i_sb->s_fs_info;

	FUNC3("dir ino %lu, f_pos %#llx", dir->i_ino, file->f_pos);

	if (file->f_pos > UBIFS_S_KEY_HASH_MASK || file->f_pos == 2)
		/*
		 * The directory was seek'ed to a senseless position or there
		 * are no more entries.
		 */
		return 0;

	/* File positions 0 and 1 correspond to "." and ".." */
	if (file->f_pos == 0) {
		FUNC12(!file->private_data);
		over = filldir(dirent, ".", 1, 0, dir->i_ino, DT_DIR);
		if (over)
			return 0;
		file->f_pos = 1;
	}

	if (file->f_pos == 1) {
		FUNC12(!file->private_data);
		over = filldir(dirent, "..", 2, 1,
			       FUNC11(file->f_path.dentry), DT_DIR);
		if (over)
			return 0;

		/* Find the first entry in TNC and save it */
		FUNC10(c, &key, dir->i_ino);
		nm.name = NULL;
		dent = FUNC15(c, &key, &nm);
		if (FUNC0(dent)) {
			err = FUNC1(dent);
			goto out;
		}

		file->f_pos = FUNC5(c, &dent->key);
		file->private_data = dent;
	}

	dent = file->private_data;
	if (!dent) {
		/*
		 * The directory was seek'ed to and is now readdir'ed.
		 * Find the entry corresponding to @file->f_pos or the
		 * closest one.
		 */
		FUNC4(c, &key, dir->i_ino, file->f_pos);
		nm.name = NULL;
		dent = FUNC15(c, &key, &nm);
		if (FUNC0(dent)) {
			err = FUNC1(dent);
			goto out;
		}
		file->f_pos = FUNC5(c, &dent->key);
		file->private_data = dent;
	}

	while (1) {
		FUNC3("feed '%s', ino %llu, new f_pos %#x",
			dent->name, (unsigned long long)FUNC9(dent->inum),
			FUNC5(c, &dent->key));
		FUNC12(FUNC9(dent->ch.sqnum) >
			     FUNC14(dir)->creat_sqnum);

		nm.len = FUNC8(dent->nlen);
		over = filldir(dirent, dent->name, nm.len, file->f_pos,
			       FUNC9(dent->inum),
			       FUNC16(dent->type));
		if (over)
			return 0;

		/* Switch to the next entry */
		FUNC6(c, &dent->key, &key);
		nm.name = dent->name;
		dent = FUNC15(c, &key, &nm);
		if (FUNC0(dent)) {
			err = FUNC1(dent);
			goto out;
		}

		FUNC7(file->private_data);
		file->f_pos = FUNC5(c, &dent->key);
		file->private_data = dent;
		FUNC2();
	}

out:
	if (err != -ENOENT) {
		FUNC13("cannot find next direntry, error %d", err);
		return err;
	}

	FUNC7(file->private_data);
	file->private_data = NULL;
	file->f_pos = 2;
	return 0;
}