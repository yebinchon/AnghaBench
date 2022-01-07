
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct inode {int i_mode; unsigned long i_ino; TYPE_1__* i_mapping; int * i_fop; int * i_op; scalar_t__ i_blocks; int i_ctime; int i_atime; int i_mtime; int i_gid; int i_uid; struct super_block* i_sb; } ;
struct TYPE_5__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; } ;
struct bfs_sb_info {unsigned long si_lasti; int bfs_lock; int si_freei; int si_imap; } ;
struct TYPE_6__ {unsigned long i_dsk_ino; scalar_t__ i_eblock; scalar_t__ i_sblock; } ;
struct TYPE_4__ {int * a_ops; } ;


 TYPE_3__* BFS_I (struct inode*) ;
 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int CURRENT_TIME_SEC ;
 int ENOSPC ;
 int S_ISGID ;
 int bfs_add_entry (struct inode*,int ,int ,unsigned long) ;
 int bfs_aops ;
 int bfs_file_inops ;
 int bfs_file_operations ;
 int current_fsgid () ;
 int current_fsuid () ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int dump_imap (char*,struct super_block*) ;
 unsigned long find_first_zero_bit (int ,unsigned long) ;
 int inode_dec_link_count (struct inode*) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct inode* new_inode (struct super_block*) ;
 int set_bit (unsigned long,int ) ;

__attribute__((used)) static int bfs_create(struct inode *dir, struct dentry *dentry, int mode,
      struct nameidata *nd)
{
 int err;
 struct inode *inode;
 struct super_block *s = dir->i_sb;
 struct bfs_sb_info *info = BFS_SB(s);
 unsigned long ino;

 inode = new_inode(s);
 if (!inode)
  return -ENOSPC;
 mutex_lock(&info->bfs_lock);
 ino = find_first_zero_bit(info->si_imap, info->si_lasti);
 if (ino > info->si_lasti) {
  mutex_unlock(&info->bfs_lock);
  iput(inode);
  return -ENOSPC;
 }
 set_bit(ino, info->si_imap);
 info->si_freei--;
 inode->i_uid = current_fsuid();
 inode->i_gid = (dir->i_mode & S_ISGID) ? dir->i_gid : current_fsgid();
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME_SEC;
 inode->i_blocks = 0;
 inode->i_op = &bfs_file_inops;
 inode->i_fop = &bfs_file_operations;
 inode->i_mapping->a_ops = &bfs_aops;
 inode->i_mode = mode;
 inode->i_ino = ino;
 BFS_I(inode)->i_dsk_ino = ino;
 BFS_I(inode)->i_sblock = 0;
 BFS_I(inode)->i_eblock = 0;
 insert_inode_hash(inode);
        mark_inode_dirty(inode);
 dump_imap("create", s);

 err = bfs_add_entry(dir, dentry->d_name.name, dentry->d_name.len,
       inode->i_ino);
 if (err) {
  inode_dec_link_count(inode);
  mutex_unlock(&info->bfs_lock);
  iput(inode);
  return err;
 }
 mutex_unlock(&info->bfs_lock);
 d_instantiate(dentry, inode);
 return 0;
}
