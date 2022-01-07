
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nfs_inode {int cache_validity; unsigned long attrtimeo_timestamp; int access_cache; int attrtimeo; scalar_t__ change_attr; int attr_gencount; int read_cache_jiffies; int * cookieverf; } ;
struct nfs_find_desc {struct nfs_fattr* fattr; struct nfs_fh* fh; } ;
struct nfs_fh {int dummy; } ;
struct TYPE_10__ {int used; } ;
struct TYPE_9__ {scalar_t__ blocks; } ;
struct TYPE_11__ {TYPE_2__ nfs3; TYPE_1__ nfs2; } ;
struct nfs_fattr {int valid; int uid; int gid; TYPE_3__ du; scalar_t__ nlink; int size; scalar_t__ change_attr; int ctime; int mtime; int atime; int gencount; int time_start; int rdev; int mode; } ;
struct TYPE_15__ {int * backing_dev_info; int * a_ops; } ;
struct inode {int i_state; unsigned long i_ino; int i_flags; int i_uid; int i_gid; int i_count; TYPE_4__* i_sb; scalar_t__ i_blocks; scalar_t__ i_nlink; scalar_t__ i_size; int i_ctime; int i_mtime; int i_atime; int i_mode; int * i_op; int * i_fop; TYPE_7__ i_data; } ;
struct TYPE_16__ {TYPE_6__* nfs_client; int backing_dev_info; } ;
struct TYPE_14__ {TYPE_5__* rpc_ops; } ;
struct TYPE_13__ {int * dir_inode_ops; int * file_ops; int * file_inode_ops; } ;
struct TYPE_12__ {int s_id; } ;


 int ENOENT ;
 int ENOMEM ;
 struct inode* ERR_PTR (int ) ;
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
 int NFS_CAP_ATIME ;
 int NFS_CAP_CHANGE_ATTR ;
 int NFS_CAP_CTIME ;
 int NFS_CAP_MODE ;
 int NFS_CAP_MTIME ;
 int NFS_CAP_NLINK ;
 int NFS_CAP_OWNER ;
 int NFS_CAP_OWNER_GROUP ;
 scalar_t__ NFS_FILEID (struct inode*) ;
 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_INVALID_ATTR ;
 int NFS_INO_REVAL_PAGECACHE ;
 int NFS_MINATTRTIMEO (struct inode*) ;
 TYPE_8__* NFS_SB (struct super_block*) ;
 int PTR_ERR (struct inode*) ;
 int RB_ROOT ;
 int S_AUTOMOUNT ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int S_NOATIME ;
 int S_NOCMTIME ;
 int atomic_read (int *) ;
 int dprintk (char*,int ,...) ;
 struct inode* iget5_locked (struct super_block*,unsigned long,int ,int ,struct nfs_find_desc*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 unsigned long jiffies ;
 int memset (int *,int ,int) ;
 int nfs_attr_check_mountpoint (struct super_block*,struct nfs_fattr*) ;
 int nfs_attr_use_mounted_on_fileid (struct nfs_fattr*) ;
 scalar_t__ nfs_calc_block_size (int ) ;
 int nfs_dir_aops ;
 int nfs_dir_operations ;
 int nfs_display_fhandle_hash (struct nfs_fh*) ;
 unsigned long nfs_fattr_to_ino_t (struct nfs_fattr*) ;
 int nfs_file_aops ;
 int nfs_find_actor ;
 int nfs_fscache_init_inode_cookie (struct inode*) ;
 int nfs_init_locked ;
 int nfs_mountpoint_inode_operations ;
 int nfs_referral_inode_operations ;
 int nfs_refresh_inode (struct inode*,struct nfs_fattr*) ;
 scalar_t__ nfs_server_capable (struct inode*,int ) ;
 scalar_t__ nfs_size_to_loff_t (int ) ;
 int nfs_symlink_inode_operations ;
 int set_ext_aops (TYPE_7__*,int *) ;
 int unlock_new_inode (struct inode*) ;

struct inode *
nfs_fhget(struct super_block *sb, struct nfs_fh *fh, struct nfs_fattr *fattr)
{
 struct nfs_find_desc desc = {
  .fh = fh,
  .fattr = fattr
 };
 struct inode *inode = ERR_PTR(-ENOENT);
 unsigned long hash;

 nfs_attr_check_mountpoint(sb, fattr);
 if (((fattr->valid & NFS_ATTR_FATTR_FILEID) == 0) &&
     !nfs_attr_use_mounted_on_fileid(fattr))
  goto out_no_inode;
 if ((fattr->valid & NFS_ATTR_FATTR_TYPE) == 0)
  goto out_no_inode;

 hash = nfs_fattr_to_ino_t(fattr);

 inode = iget5_locked(sb, hash, nfs_find_actor, nfs_init_locked, &desc);
 if (inode == ((void*)0)) {
  inode = ERR_PTR(-ENOMEM);
  goto out_no_inode;
 }

 if (inode->i_state & I_NEW) {
  struct nfs_inode *nfsi = NFS_I(inode);
  unsigned long now = jiffies;



  inode->i_ino = hash;


  inode->i_flags |= S_NOATIME|S_NOCMTIME;
  inode->i_mode = fattr->mode;
  if ((fattr->valid & NFS_ATTR_FATTR_MODE) == 0
    && nfs_server_capable(inode, NFS_CAP_MODE))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;



  inode->i_op = NFS_SB(sb)->nfs_client->rpc_ops->file_inode_ops;
  if (S_ISREG(inode->i_mode)) {
   inode->i_fop = NFS_SB(sb)->nfs_client->rpc_ops->file_ops;
   inode->i_data.a_ops = &nfs_file_aops;
   inode->i_data.backing_dev_info = &NFS_SB(sb)->backing_dev_info;
  } else if (S_ISDIR(inode->i_mode)) {
   inode->i_op = NFS_SB(sb)->nfs_client->rpc_ops->dir_inode_ops;
   inode->i_fop = &nfs_dir_operations;
   set_ext_aops(&inode->i_data, &nfs_dir_aops);

   if (fattr->valid & NFS_ATTR_FATTR_MOUNTPOINT ||
     fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL) {
    if (fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL)
     inode->i_op = &nfs_referral_inode_operations;
    else
     inode->i_op = &nfs_mountpoint_inode_operations;
    inode->i_fop = ((void*)0);
    inode->i_flags |= S_AUTOMOUNT;
   }
  } else if (S_ISLNK(inode->i_mode))
   inode->i_op = &nfs_symlink_inode_operations;
  else
   init_special_inode(inode, inode->i_mode, fattr->rdev);

  memset(&inode->i_atime, 0, sizeof(inode->i_atime));
  memset(&inode->i_mtime, 0, sizeof(inode->i_mtime));
  memset(&inode->i_ctime, 0, sizeof(inode->i_ctime));
  nfsi->change_attr = 0;
  inode->i_size = 0;
  inode->i_nlink = 0;
  inode->i_uid = -2;
  inode->i_gid = -2;
  inode->i_blocks = 0;
  memset(nfsi->cookieverf, 0, sizeof(nfsi->cookieverf));

  nfsi->read_cache_jiffies = fattr->time_start;
  nfsi->attr_gencount = fattr->gencount;
  if (fattr->valid & NFS_ATTR_FATTR_ATIME)
   inode->i_atime = fattr->atime;
  else if (nfs_server_capable(inode, NFS_CAP_ATIME))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
  if (fattr->valid & NFS_ATTR_FATTR_MTIME)
   inode->i_mtime = fattr->mtime;
  else if (nfs_server_capable(inode, NFS_CAP_MTIME))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
  if (fattr->valid & NFS_ATTR_FATTR_CTIME)
   inode->i_ctime = fattr->ctime;
  else if (nfs_server_capable(inode, NFS_CAP_CTIME))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
  if (fattr->valid & NFS_ATTR_FATTR_CHANGE)
   nfsi->change_attr = fattr->change_attr;
  else if (nfs_server_capable(inode, NFS_CAP_CHANGE_ATTR))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
  if (fattr->valid & NFS_ATTR_FATTR_SIZE)
   inode->i_size = nfs_size_to_loff_t(fattr->size);
  else
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR
    | NFS_INO_REVAL_PAGECACHE;
  if (fattr->valid & NFS_ATTR_FATTR_NLINK)
   inode->i_nlink = fattr->nlink;
  else if (nfs_server_capable(inode, NFS_CAP_NLINK))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
  if (fattr->valid & NFS_ATTR_FATTR_OWNER)
   inode->i_uid = fattr->uid;
  else if (nfs_server_capable(inode, NFS_CAP_OWNER))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
  if (fattr->valid & NFS_ATTR_FATTR_GROUP)
   inode->i_gid = fattr->gid;
  else if (nfs_server_capable(inode, NFS_CAP_OWNER_GROUP))
   nfsi->cache_validity |= NFS_INO_INVALID_ATTR;
  if (fattr->valid & NFS_ATTR_FATTR_BLOCKS_USED)
   inode->i_blocks = fattr->du.nfs2.blocks;
  if (fattr->valid & NFS_ATTR_FATTR_SPACE_USED) {



   inode->i_blocks = nfs_calc_block_size(fattr->du.nfs3.used);
  }
  nfsi->attrtimeo = NFS_MINATTRTIMEO(inode);
  nfsi->attrtimeo_timestamp = now;
  nfsi->access_cache = RB_ROOT;

  nfs_fscache_init_inode_cookie(inode);

  unlock_new_inode(inode);
 } else
  nfs_refresh_inode(inode, fattr);
 dprintk("NFS: nfs_fhget(%s/%Ld fh_crc=0x%08x ct=%d)\n",
  inode->i_sb->s_id,
  (long long)NFS_FILEID(inode),
  nfs_display_fhandle_hash(fh),
  atomic_read(&inode->i_count));

out:
 return inode;

out_no_inode:
 dprintk("nfs_fhget: iget failed with error %ld\n", PTR_ERR(inode));
 goto out;
}
