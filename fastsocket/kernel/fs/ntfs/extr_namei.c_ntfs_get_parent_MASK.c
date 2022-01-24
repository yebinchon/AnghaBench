#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  ntfs_inode ;
struct TYPE_11__ {TYPE_5__* attr; } ;
typedef  TYPE_3__ ntfs_attr_search_ctx ;
struct TYPE_9__ {int /*<<< orphan*/  value_length; int /*<<< orphan*/  value_offset; } ;
struct TYPE_10__ {TYPE_1__ resident; } ;
struct TYPE_13__ {int non_resident; int /*<<< orphan*/  length; TYPE_2__ data; } ;
struct TYPE_12__ {int /*<<< orphan*/  parent_directory; } ;
typedef  int /*<<< orphan*/  MFT_RECORD ;
typedef  TYPE_4__ FILE_NAME_ATTR ;
typedef  TYPE_5__ ATTR_RECORD ;

/* Variables and functions */
 int /*<<< orphan*/  AT_FILE_NAME ; 
 int /*<<< orphan*/  CASE_SENSITIVE ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct inode*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dentry *FUNC16(struct dentry *child_dent)
{
	struct inode *vi = child_dent->d_inode;
	ntfs_inode *ni = FUNC3(vi);
	MFT_RECORD *mrec;
	ntfs_attr_search_ctx *ctx;
	ATTR_RECORD *attr;
	FILE_NAME_ATTR *fn;
	unsigned long parent_ino;
	int err;

	FUNC11("Entering for inode 0x%lx.", vi->i_ino);
	/* Get the mft record of the inode belonging to the child dentry. */
	mrec = FUNC7(ni);
	if (FUNC1(mrec))
		return (struct dentry *)mrec;
	/* Find the first file name attribute in the mft record. */
	ctx = FUNC8(ni, mrec);
	if (FUNC14(!ctx)) {
		FUNC15(ni);
		return FUNC0(-ENOMEM);
	}
try_next:
	err = FUNC9(AT_FILE_NAME, NULL, 0, CASE_SENSITIVE, 0, NULL,
			0, ctx);
	if (FUNC14(err)) {
		FUNC10(ctx);
		FUNC15(ni);
		if (err == -ENOENT)
			FUNC12(vi->i_sb, "Inode 0x%lx does not have a "
					"file name attribute.  Run chkdsk.",
					vi->i_ino);
		return FUNC0(err);
	}
	attr = ctx->attr;
	if (FUNC14(attr->non_resident))
		goto try_next;
	fn = (FILE_NAME_ATTR *)((u8 *)attr +
			FUNC5(attr->data.resident.value_offset));
	if (FUNC14((u8 *)fn + FUNC6(attr->data.resident.value_length) >
			(u8*)attr + FUNC6(attr->length)))
		goto try_next;
	/* Get the inode number of the parent directory. */
	parent_ino = FUNC2(fn->parent_directory);
	/* Release the search context and the mft record of the child. */
	FUNC10(ctx);
	FUNC15(ni);

	return FUNC4(FUNC13(vi->i_sb, parent_ino));
}