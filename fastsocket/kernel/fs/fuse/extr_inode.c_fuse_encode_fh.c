
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct inode {scalar_t__ i_generation; int i_mode; } ;
struct dentry {int d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
struct TYPE_4__ {int nodeid; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int S_ISDIR (int ) ;
 TYPE_2__* get_fuse_inode (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int fuse_encode_fh(struct dentry *dentry, u32 *fh, int *max_len,
      int connectable)
{
 struct inode *inode = dentry->d_inode;
 bool encode_parent = connectable && !S_ISDIR(inode->i_mode);
 int len = encode_parent ? 6 : 3;
 u64 nodeid;
 u32 generation;

 if (*max_len < len)
  return 255;

 nodeid = get_fuse_inode(inode)->nodeid;
 generation = inode->i_generation;

 fh[0] = (u32)(nodeid >> 32);
 fh[1] = (u32)(nodeid & 0xffffffff);
 fh[2] = generation;

 if (encode_parent) {
  struct inode *parent;

  spin_lock(&dentry->d_lock);
  parent = dentry->d_parent->d_inode;
  nodeid = get_fuse_inode(parent)->nodeid;
  generation = parent->i_generation;
  spin_unlock(&dentry->d_lock);

  fh[3] = (u32)(nodeid >> 32);
  fh[4] = (u32)(nodeid & 0xffffffff);
  fh[5] = generation;
 }

 *max_len = len;
 return encode_parent ? 0x82 : 0x81;
}
