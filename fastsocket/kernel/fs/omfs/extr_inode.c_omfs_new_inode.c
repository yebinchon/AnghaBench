
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct omfs_sb_info {int s_sys_blocksize; int s_mirrors; } ;
struct inode {int i_mode; int i_size; int * i_fop; int * i_op; int i_ctime; int i_mtime; int i_atime; TYPE_1__* i_mapping; int i_gid; int i_uid; int i_ino; int i_sb; } ;
struct TYPE_2__ {int * a_ops; } ;


 int CURRENT_TIME ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 struct omfs_sb_info* OMFS_SB (int ) ;

 int S_IFMT ;

 int current_fsgid () ;
 int current_fsuid () ;
 int inc_nlink (struct inode*) ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 struct inode* new_inode (int ) ;
 int omfs_allocate_range (int ,int ,int ,int *,int*) ;
 int omfs_aops ;
 int omfs_dir_inops ;
 int omfs_dir_operations ;
 int omfs_file_inops ;
 int omfs_file_operations ;

struct inode *omfs_new_inode(struct inode *dir, int mode)
{
 struct inode *inode;
 u64 new_block;
 int err;
 int len;
 struct omfs_sb_info *sbi = OMFS_SB(dir->i_sb);

 inode = new_inode(dir->i_sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 err = omfs_allocate_range(dir->i_sb, sbi->s_mirrors, sbi->s_mirrors,
   &new_block, &len);
 if (err)
  goto fail;

 inode->i_ino = new_block;
 inode->i_mode = mode;
 inode->i_uid = current_fsuid();
 inode->i_gid = current_fsgid();
 inode->i_mapping->a_ops = &omfs_aops;

 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME;
 switch (mode & S_IFMT) {
 case 129:
  inode->i_op = &omfs_dir_inops;
  inode->i_fop = &omfs_dir_operations;
  inode->i_size = sbi->s_sys_blocksize;
  inc_nlink(inode);
  break;
 case 128:
  inode->i_op = &omfs_file_inops;
  inode->i_fop = &omfs_file_operations;
  inode->i_size = 0;
  break;
 }

 insert_inode_hash(inode);
 mark_inode_dirty(inode);
 return inode;
fail:
 make_bad_inode(inode);
 iput(inode);
 return ERR_PTR(err);
}
