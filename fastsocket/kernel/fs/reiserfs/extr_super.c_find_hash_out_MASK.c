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
typedef  scalar_t__ u32 ;
struct super_block {TYPE_1__* s_root; } ;
struct reiserfs_dir_entry {size_t de_entry_num; int /*<<< orphan*/ * de_deh; int /*<<< orphan*/  de_namelen; int /*<<< orphan*/  de_name; } ;
struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_HASH ; 
 scalar_t__ DOT_DOT_OFFSET ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IO_ERROR ; 
 int NAME_NOT_FOUND ; 
 int /*<<< orphan*/  R5_HASH ; 
 int /*<<< orphan*/  TEA_HASH ; 
 int /*<<< orphan*/  TYPE_DIRENTRY ; 
 int /*<<< orphan*/  UNSET_HASH ; 
 int /*<<< orphan*/  YURA_HASH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cpu_key*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*) ; 
 scalar_t__ FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,char*,char*) ; 
 int FUNC10 (struct super_block*,struct cpu_key*,int /*<<< orphan*/ *,struct reiserfs_dir_entry*) ; 
 int /*<<< orphan*/  FUNC11 (struct reiserfs_dir_entry*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __u32 FUNC13(struct super_block *s)
{
	int retval;
	struct inode *inode;
	struct cpu_key key;
	FUNC1(path);
	struct reiserfs_dir_entry de;
	__u32 hash = DEFAULT_HASH;

	inode = s->s_root->d_inode;

	do {			// Some serious "goto"-hater was there ;)
		u32 teahash, r5hash, yurahash;

		FUNC4(&key, inode, ~0, TYPE_DIRENTRY, 3);
		retval = FUNC10(s, &key, &path, &de);
		if (retval == IO_ERROR) {
			FUNC5(&path);
			return UNSET_HASH;
		}
		if (retval == NAME_NOT_FOUND)
			de.de_entry_num--;
		FUNC11(&de);
		if (FUNC2(&(de.de_deh[de.de_entry_num])) == DOT_DOT_OFFSET) {
			/* allow override in this case */
			if (FUNC8(s)) {
				hash = YURA_HASH;
			}
			FUNC7(s, "FS seems to be empty, autodetect "
					 "is using the default hash\n");
			break;
		}
		r5hash = FUNC0(FUNC6(de.de_name, de.de_namelen));
		teahash = FUNC0(FUNC3(de.de_name, de.de_namelen));
		yurahash = FUNC0(FUNC12(de.de_name, de.de_namelen));
		if (((teahash == r5hash)
		     &&
		     (FUNC0(FUNC2(&(de.de_deh[de.de_entry_num])))
		      == r5hash)) || ((teahash == yurahash)
				      && (yurahash ==
					  FUNC0(FUNC2
							 (&
							  (de.
							   de_deh[de.
								  de_entry_num])))))
		    || ((r5hash == yurahash)
			&& (yurahash ==
			    FUNC0(FUNC2
					   (&(de.de_deh[de.de_entry_num])))))) {
			FUNC9(s, "reiserfs-2506", "Unable to "
					 "automatically detect hash function. "
					 "Please mount with -o "
					 "hash={tea,rupasov,r5}");
			hash = UNSET_HASH;
			break;
		}
		if (FUNC0(FUNC2(&(de.de_deh[de.de_entry_num]))) ==
		    yurahash)
			hash = YURA_HASH;
		else if (FUNC0
			 (FUNC2(&(de.de_deh[de.de_entry_num]))) == teahash)
			hash = TEA_HASH;
		else if (FUNC0
			 (FUNC2(&(de.de_deh[de.de_entry_num]))) == r5hash)
			hash = R5_HASH;
		else {
			FUNC9(s, "reiserfs-2506",
					 "Unrecognised hash function");
			hash = UNSET_HASH;
		}
	} while (0);

	FUNC5(&path);
	return hash;
}