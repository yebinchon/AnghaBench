
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct inode {int i_generation; int i_mode; } ;
struct dentry {int d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
struct btrfs_fid {scalar_t__ root_objectid; scalar_t__ parent_root_objectid; int parent_gen; int parent_objectid; int gen; int objectid; } ;
struct TYPE_6__ {int objectid; } ;
struct TYPE_8__ {TYPE_3__* root; TYPE_2__ location; } ;
struct TYPE_7__ {scalar_t__ objectid; } ;
struct TYPE_5__ {struct inode* d_inode; } ;


 int BTRFS_FID_SIZE_CONNECTABLE ;
 int BTRFS_FID_SIZE_CONNECTABLE_ROOT ;
 int BTRFS_FID_SIZE_NON_CONNECTABLE ;
 TYPE_4__* BTRFS_I (struct inode*) ;
 int FILEID_BTRFS_WITHOUT_PARENT ;
 int FILEID_BTRFS_WITH_PARENT ;
 int FILEID_BTRFS_WITH_PARENT_ROOT ;
 int S_ISDIR (int ) ;
 int btrfs_ino (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int btrfs_encode_fh(struct dentry *dentry, u32 *fh, int *max_len,
      int connectable)
{
 struct btrfs_fid *fid = (struct btrfs_fid *)fh;
 struct inode *inode = dentry->d_inode;
 int len = *max_len;
 int type;

 if (connectable && (len < BTRFS_FID_SIZE_CONNECTABLE)) {
  *max_len = BTRFS_FID_SIZE_CONNECTABLE;
  return 255;
 } else if (len < BTRFS_FID_SIZE_NON_CONNECTABLE) {
  *max_len = BTRFS_FID_SIZE_NON_CONNECTABLE;
  return 255;
 }

 len = BTRFS_FID_SIZE_NON_CONNECTABLE;
 type = FILEID_BTRFS_WITHOUT_PARENT;

 fid->objectid = btrfs_ino(inode);
 fid->root_objectid = BTRFS_I(inode)->root->objectid;
 fid->gen = inode->i_generation;

 if (connectable && !S_ISDIR(inode->i_mode)) {
  struct inode *parent;
  u64 parent_root_id;

  spin_lock(&dentry->d_lock);

  parent = dentry->d_parent->d_inode;
  fid->parent_objectid = BTRFS_I(parent)->location.objectid;
  fid->parent_gen = parent->i_generation;
  parent_root_id = BTRFS_I(parent)->root->objectid;

  spin_unlock(&dentry->d_lock);

  if (parent_root_id != fid->root_objectid) {
   fid->parent_root_objectid = parent_root_id;
   len = BTRFS_FID_SIZE_CONNECTABLE_ROOT;
   type = FILEID_BTRFS_WITH_PARENT_ROOT;
  } else {
   len = BTRFS_FID_SIZE_CONNECTABLE;
   type = FILEID_BTRFS_WITH_PARENT;
  }
 }

 *max_len = len;
 return type;
}
