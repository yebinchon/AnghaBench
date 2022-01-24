#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_inode {int cache_validity; unsigned long attrtimeo_timestamp; int /*<<< orphan*/  access_cache; int /*<<< orphan*/  attrtimeo; scalar_t__ change_attr; int /*<<< orphan*/  attr_gencount; int /*<<< orphan*/  read_cache_jiffies; int /*<<< orphan*/ * cookieverf; } ;
struct nfs_find_desc {struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs_fh {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  used; } ;
struct TYPE_9__ {scalar_t__ blocks; } ;
struct TYPE_11__ {TYPE_2__ nfs3; TYPE_1__ nfs2; } ;
struct nfs_fattr {int valid; int uid; int gid; TYPE_3__ du; scalar_t__ nlink; int /*<<< orphan*/  size; scalar_t__ change_attr; int /*<<< orphan*/  ctime; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  gencount; int /*<<< orphan*/  time_start; int /*<<< orphan*/  rdev; int /*<<< orphan*/  mode; } ;
struct TYPE_15__ {int /*<<< orphan*/ * backing_dev_info; int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_state; unsigned long i_ino; int i_flags; int i_uid; int i_gid; int /*<<< orphan*/  i_count; TYPE_4__* i_sb; scalar_t__ i_blocks; scalar_t__ i_nlink; scalar_t__ i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/ * i_fop; TYPE_7__ i_data; } ;
struct TYPE_16__ {TYPE_6__* nfs_client; int /*<<< orphan*/  backing_dev_info; } ;
struct TYPE_14__ {TYPE_5__* rpc_ops; } ;
struct TYPE_13__ {int /*<<< orphan*/ * dir_inode_ops; int /*<<< orphan*/ * file_ops; int /*<<< orphan*/ * file_inode_ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int I_NEW ; 
 int NFS_ATTR_FATTR_ATIME ; 
 int NFS_ATTR_FATTR_BLOCKS_USED ; 
 int NFS_ATTR_FATTR_CHANGE ; 
 int NFS_ATTR_FATTR_CTIME ; 
 int NFS_ATTR_FATTR_FILEID ; 
 int NFS_ATTR_FATTR_GROUP ; 
 int NFS_ATTR_FATTR_MODE ; 
 int NFS_ATTR_FATTR_MOUNTPOINT ; 
 int NFS_ATTR_FATTR_MTIME ; 
 int NFS_ATTR_FATTR_NLINK ; 
 int NFS_ATTR_FATTR_OWNER ; 
 int NFS_ATTR_FATTR_SIZE ; 
 int NFS_ATTR_FATTR_SPACE_USED ; 
 int NFS_ATTR_FATTR_TYPE ; 
 int NFS_ATTR_FATTR_V4_REFERRAL ; 
 int /*<<< orphan*/  NFS_CAP_ATIME ; 
 int /*<<< orphan*/  NFS_CAP_CHANGE_ATTR ; 
 int /*<<< orphan*/  NFS_CAP_CTIME ; 
 int /*<<< orphan*/  NFS_CAP_MODE ; 
 int /*<<< orphan*/  NFS_CAP_MTIME ; 
 int /*<<< orphan*/  NFS_CAP_NLINK ; 
 int /*<<< orphan*/  NFS_CAP_OWNER ; 
 int /*<<< orphan*/  NFS_CAP_OWNER_GROUP ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 struct nfs_inode* FUNC2 (struct inode*) ; 
 int NFS_INO_INVALID_ATTR ; 
 int NFS_INO_REVAL_PAGECACHE ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 TYPE_8__* FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int S_AUTOMOUNT ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int S_NOATIME ; 
 int S_NOCMTIME ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,...) ; 
 struct inode* FUNC11 (struct super_block*,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nfs_find_desc*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct super_block*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC15 (struct nfs_fattr*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_dir_aops ; 
 int /*<<< orphan*/  nfs_dir_operations ; 
 int /*<<< orphan*/  FUNC17 (struct nfs_fh*) ; 
 unsigned long FUNC18 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  nfs_file_aops ; 
 int /*<<< orphan*/  nfs_find_actor ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  nfs_init_locked ; 
 int /*<<< orphan*/  nfs_mountpoint_inode_operations ; 
 int /*<<< orphan*/  nfs_referral_inode_operations ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,struct nfs_fattr*) ; 
 scalar_t__ FUNC21 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs_symlink_inode_operations ; 
 int /*<<< orphan*/  FUNC23 (TYPE_7__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 

struct inode *
FUNC25(struct super_block *sb, struct nfs_fh *fh, struct nfs_fattr *fattr)
{
	struct nfs_find_desc desc = {
		.fh	= fh,
		.fattr	= fattr
	};
	struct inode *inode = FUNC0(-ENOENT);
	unsigned long hash;

	FUNC14(sb, fattr);
	if (((fattr->valid & NFS_ATTR_FATTR_FILEID) == 0) &&
	    !FUNC15(fattr))
		goto out_no_inode;
	if ((fattr->valid & NFS_ATTR_FATTR_TYPE) == 0)
		goto out_no_inode;

	hash = FUNC18(fattr);

	inode = FUNC11(sb, hash, nfs_find_actor, nfs_init_locked, &desc);
	if (inode == NULL) {
		inode = FUNC0(-ENOMEM);
		goto out_no_inode;
	}

	if (inode->i_state & I_NEW) {
		struct nfs_inode *nfsi = FUNC2(inode);
		unsigned long now = jiffies;

		/* We set i_ino for the few things that still rely on it,
		 * such as stat(2) */
		inode->i_ino = hash;

		/* We can't support update_atime(), since the server will reset it */
		inode->i_flags |= S_NOATIME|S_NOCMTIME;
		inode->i_mode = fattr->mode;
		if ((fattr->valid & NFS_ATTR_FATTR_MODE) == 0
				&& FUNC21(inode, NFS_CAP_MODE))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		/* Why so? Because we want revalidate for devices/FIFOs, and
		 * that's precisely what we have in nfs_file_inode_operations.
		 */
		inode->i_op = FUNC4(sb)->nfs_client->rpc_ops->file_inode_ops;
		if (FUNC8(inode->i_mode)) {
			inode->i_fop = FUNC4(sb)->nfs_client->rpc_ops->file_ops;
			inode->i_data.a_ops = &nfs_file_aops;
			inode->i_data.backing_dev_info = &FUNC4(sb)->backing_dev_info;
		} else if (FUNC6(inode->i_mode)) {
			inode->i_op = FUNC4(sb)->nfs_client->rpc_ops->dir_inode_ops;
			inode->i_fop = &nfs_dir_operations;
			FUNC23(&inode->i_data, &nfs_dir_aops);
			/* Deal with crossing mountpoints */
			if (fattr->valid & NFS_ATTR_FATTR_MOUNTPOINT ||
					fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL) {
				if (fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL)
					inode->i_op = &nfs_referral_inode_operations;
				else
					inode->i_op = &nfs_mountpoint_inode_operations;
				inode->i_fop = NULL;
				inode->i_flags |= S_AUTOMOUNT;
			}
		} else if (FUNC7(inode->i_mode))
			inode->i_op = &nfs_symlink_inode_operations;
		else
			FUNC12(inode, inode->i_mode, fattr->rdev);

		FUNC13(&inode->i_atime, 0, sizeof(inode->i_atime));
		FUNC13(&inode->i_mtime, 0, sizeof(inode->i_mtime));
		FUNC13(&inode->i_ctime, 0, sizeof(inode->i_ctime));
		nfsi->change_attr = 0;
		inode->i_size = 0;
		inode->i_nlink = 0;
		inode->i_uid = -2;
		inode->i_gid = -2;
		inode->i_blocks = 0;
		FUNC13(nfsi->cookieverf, 0, sizeof(nfsi->cookieverf));

		nfsi->read_cache_jiffies = fattr->time_start;
		nfsi->attr_gencount = fattr->gencount;
		if (fattr->valid & NFS_ATTR_FATTR_ATIME)
			inode->i_atime = fattr->atime;
		else if (FUNC21(inode, NFS_CAP_ATIME))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		if (fattr->valid & NFS_ATTR_FATTR_MTIME)
			inode->i_mtime = fattr->mtime;
		else if (FUNC21(inode, NFS_CAP_MTIME))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		if (fattr->valid & NFS_ATTR_FATTR_CTIME)
			inode->i_ctime = fattr->ctime;
		else if (FUNC21(inode, NFS_CAP_CTIME))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		if (fattr->valid & NFS_ATTR_FATTR_CHANGE)
			nfsi->change_attr = fattr->change_attr;
		else if (FUNC21(inode, NFS_CAP_CHANGE_ATTR))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		if (fattr->valid & NFS_ATTR_FATTR_SIZE)
			inode->i_size = FUNC22(fattr->size);
		else
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR
				| NFS_INO_REVAL_PAGECACHE;
		if (fattr->valid & NFS_ATTR_FATTR_NLINK)
			inode->i_nlink = fattr->nlink;
		else if (FUNC21(inode, NFS_CAP_NLINK))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		if (fattr->valid & NFS_ATTR_FATTR_OWNER)
			inode->i_uid = fattr->uid;
		else if (FUNC21(inode, NFS_CAP_OWNER))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		if (fattr->valid & NFS_ATTR_FATTR_GROUP)
			inode->i_gid = fattr->gid;
		else if (FUNC21(inode, NFS_CAP_OWNER_GROUP))
			nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
		if (fattr->valid & NFS_ATTR_FATTR_BLOCKS_USED)
			inode->i_blocks = fattr->du.nfs2.blocks;
		if (fattr->valid & NFS_ATTR_FATTR_SPACE_USED) {
			/*
			 * report the blocks in 512byte units
			 */
			inode->i_blocks = FUNC16(fattr->du.nfs3.used);
		}
		nfsi->attrtimeo = FUNC3(inode);
		nfsi->attrtimeo_timestamp = now;
		nfsi->access_cache = RB_ROOT;

		FUNC19(inode);

		FUNC24(inode);
	} else
		FUNC20(inode, fattr);
	FUNC10("NFS: nfs_fhget(%s/%Ld fh_crc=0x%08x ct=%d)\n",
		inode->i_sb->s_id,
		(long long)FUNC1(inode),
		FUNC17(fh),
		FUNC9(&inode->i_count));

out:
	return inode;

out_no_inode:
	FUNC10("nfs_fhget: iget failed with error %ld\n", FUNC5(inode));
	goto out;
}