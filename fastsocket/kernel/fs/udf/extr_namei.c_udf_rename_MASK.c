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
struct TYPE_6__ {scalar_t__ i_data; } ;
struct udf_inode_info {scalar_t__ i_alloc_type; int /*<<< orphan*/  i_location; scalar_t__ i_efe; TYPE_1__ i_ext; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct long_ad {int dummy; } ;
struct kernel_lb_addr {int dummy; } ;
struct inode {scalar_t__ i_ino; int i_nlink; TYPE_2__* i_sb; void* i_mtime; void* i_ctime; int /*<<< orphan*/  i_mode; } ;
struct TYPE_8__ {int /*<<< orphan*/  extLocation; } ;
struct fileIdentDesc {int /*<<< orphan*/  lengthOfImpUse; TYPE_3__ icb; int /*<<< orphan*/  fileCharacteristics; int /*<<< orphan*/  fileVersionNum; } ;
struct fileEntry {int dummy; } ;
struct extendedFileEntry {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_blocksize; } ;

/* Variables and functions */
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct udf_inode_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 struct kernel_lb_addr FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*,struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_3__*,int) ; 
 struct fileIdentDesc* FUNC14 (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ; 
 struct buffer_head* FUNC15 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,struct fileIdentDesc*,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 int FUNC17 (struct inode*) ; 
 struct fileIdentDesc* FUNC18 (struct inode*,int /*<<< orphan*/ *,struct udf_fileident_bh*,struct fileIdentDesc*) ; 
 struct fileIdentDesc* FUNC19 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC20 (TYPE_2__*,struct kernel_lb_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 

__attribute__((used)) static int FUNC24(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *old_inode = old_dentry->d_inode;
	struct inode *new_inode = new_dentry->d_inode;
	struct udf_fileident_bh ofibh, nfibh;
	struct fileIdentDesc *ofi = NULL, *nfi = NULL, *dir_fi = NULL;
	struct fileIdentDesc ocfi, ncfi;
	struct buffer_head *dir_bh = NULL;
	int retval = -ENOENT;
	struct kernel_lb_addr tloc;
	struct udf_inode_info *old_iinfo = FUNC1(old_inode);

	FUNC10();
	ofi = FUNC18(old_dir, &old_dentry->d_name, &ofibh, &ocfi);
	if (ofi) {
		if (ofibh.sbh != ofibh.ebh)
			FUNC2(ofibh.ebh);
		FUNC2(ofibh.sbh);
	}
	tloc = FUNC9(ocfi.icb.extLocation);
	if (!ofi || FUNC20(old_dir->i_sb, &tloc, 0)
	    != old_inode->i_ino)
		goto end_rename;

	nfi = FUNC18(new_dir, &new_dentry->d_name, &nfibh, &ncfi);
	if (nfi) {
		if (!new_inode) {
			if (nfibh.sbh != nfibh.ebh)
				FUNC2(nfibh.ebh);
			FUNC2(nfibh.sbh);
			nfi = NULL;
		}
	}
	if (FUNC0(old_inode->i_mode)) {
		int offset = FUNC17(old_inode);

		if (new_inode) {
			retval = -ENOTEMPTY;
			if (!FUNC5(new_inode))
				goto end_rename;
		}
		retval = -EIO;
		if (old_iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB) {
			dir_fi = FUNC19(
					old_iinfo->i_ext.i_data -
					  (old_iinfo->i_efe ?
					   sizeof(struct extendedFileEntry) :
					   sizeof(struct fileEntry)),
					old_inode->i_sb->s_blocksize, &offset);
		} else {
			dir_bh = FUNC15(old_inode, 0, 0, &retval);
			if (!dir_bh)
				goto end_rename;
			dir_fi = FUNC19(dir_bh->b_data,
					old_inode->i_sb->s_blocksize, &offset);
		}
		if (!dir_fi)
			goto end_rename;
		tloc = FUNC9(dir_fi->icb.extLocation);
		if (FUNC20(old_inode->i_sb, &tloc, 0) !=
				old_dir->i_ino)
			goto end_rename;

		retval = -EMLINK;
		if (!new_inode &&
			new_dir->i_nlink >=
				(256 << sizeof(new_dir->i_nlink)) - 1)
			goto end_rename;
	}
	if (!nfi) {
		nfi = FUNC14(new_dir, new_dentry, &nfibh, &ncfi,
				    &retval);
		if (!nfi)
			goto end_rename;
	}

	/*
	 * Like most other Unix systems, set the ctime for inodes on a
	 * rename.
	 */
	old_inode->i_ctime = FUNC4(old_inode->i_sb);
	FUNC12(old_inode);

	/*
	 * ok, that's it
	 */
	ncfi.fileVersionNum = ocfi.fileVersionNum;
	ncfi.fileCharacteristics = ocfi.fileCharacteristics;
	FUNC13(&(ncfi.icb), &(ocfi.icb), sizeof(struct long_ad));
	FUNC22(new_dir, &ncfi, nfi, &nfibh, NULL, NULL);

	/* The old fid may have moved - find it again */
	ofi = FUNC18(old_dir, &old_dentry->d_name, &ofibh, &ocfi);
	FUNC16(old_dir, ofi, &ofibh, &ocfi);

	if (new_inode) {
		new_inode->i_ctime = FUNC4(new_inode->i_sb);
		FUNC7(new_inode);
	}
	old_dir->i_ctime = old_dir->i_mtime = FUNC4(old_dir->i_sb);
	FUNC12(old_dir);

	if (dir_fi) {
		dir_fi->icb.extLocation = FUNC3(FUNC1(new_dir)->i_location);
		FUNC21((char *)dir_fi,
				(sizeof(struct fileIdentDesc) +
				FUNC8(dir_fi->lengthOfImpUse) + 3) & ~3);
		if (old_iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
			FUNC12(old_inode);
		else
			FUNC11(dir_bh, old_inode);

		FUNC7(old_dir);
		if (new_inode)
			FUNC7(new_inode);
		else {
			FUNC6(new_dir);
			FUNC12(new_dir);
		}
	}

	if (ofi) {
		if (ofibh.sbh != ofibh.ebh)
			FUNC2(ofibh.ebh);
		FUNC2(ofibh.sbh);
	}

	retval = 0;

end_rename:
	FUNC2(dir_bh);
	if (nfi) {
		if (nfibh.sbh != nfibh.ebh)
			FUNC2(nfibh.ebh);
		FUNC2(nfibh.sbh);
	}
	FUNC23();

	return retval;
}