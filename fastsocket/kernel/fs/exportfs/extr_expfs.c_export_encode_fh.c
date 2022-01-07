
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_generation; int i_ino; int i_mode; } ;
struct TYPE_4__ {int parent_gen; int parent_ino; int gen; int ino; } ;
struct fid {TYPE_2__ i32; } ;
struct dentry {int d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int FILEID_INO32_GEN ;
 int FILEID_INO32_GEN_PARENT ;
 int S_ISDIR (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int export_encode_fh(struct dentry *dentry, struct fid *fid,
  int *max_len, int connectable)
{
 struct inode * inode = dentry->d_inode;
 int len = *max_len;
 int type = FILEID_INO32_GEN;

 if (len < 2 || (connectable && len < 4))
  return 255;

 len = 2;
 fid->i32.ino = inode->i_ino;
 fid->i32.gen = inode->i_generation;
 if (connectable && !S_ISDIR(inode->i_mode)) {
  struct inode *parent;

  spin_lock(&dentry->d_lock);
  parent = dentry->d_parent->d_inode;
  fid->i32.parent_ino = parent->i_ino;
  fid->i32.parent_gen = parent->i_generation;
  spin_unlock(&dentry->d_lock);
  len = 4;
  type = FILEID_INO32_GEN_PARENT;
 }
 *max_len = len;
 return type;
}
