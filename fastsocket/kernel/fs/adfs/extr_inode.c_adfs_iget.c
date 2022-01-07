
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int s_blocksize; int s_blocksize_bits; } ;
struct object_info {int size; int loadaddr; int attr; int execaddr; int parent_id; int file_id; } ;
struct inode {int i_size; int i_nlink; int i_blocks; TYPE_1__* i_mapping; int * i_fop; int * i_op; int i_mode; int i_mtime; int i_ctime; int i_atime; int i_ino; int i_gid; int i_uid; } ;
struct TYPE_6__ {int loadaddr; int stamped; int mmu_private; int attr; int execaddr; int parent_id; } ;
struct TYPE_5__ {int s_gid; int s_uid; } ;
struct TYPE_4__ {int * a_ops; } ;


 TYPE_3__* ADFS_I (struct inode*) ;
 TYPE_2__* ADFS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int adfs_adfs2unix_time (int *,struct inode*) ;
 int adfs_aops ;
 int adfs_atts2mode (struct super_block*,struct inode*) ;
 int adfs_dir_inode_operations ;
 int adfs_dir_operations ;
 int adfs_file_inode_operations ;
 int adfs_file_operations ;
 int insert_inode_hash (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;

struct inode *
adfs_iget(struct super_block *sb, struct object_info *obj)
{
 struct inode *inode;

 inode = new_inode(sb);
 if (!inode)
  goto out;

 inode->i_uid = ADFS_SB(sb)->s_uid;
 inode->i_gid = ADFS_SB(sb)->s_gid;
 inode->i_ino = obj->file_id;
 inode->i_size = obj->size;
 inode->i_nlink = 2;
 inode->i_blocks = (inode->i_size + sb->s_blocksize - 1) >>
       sb->s_blocksize_bits;







 ADFS_I(inode)->parent_id = obj->parent_id;
 ADFS_I(inode)->loadaddr = obj->loadaddr;
 ADFS_I(inode)->execaddr = obj->execaddr;
 ADFS_I(inode)->attr = obj->attr;
 ADFS_I(inode)->stamped = ((obj->loadaddr & 0xfff00000) == 0xfff00000);

 inode->i_mode = adfs_atts2mode(sb, inode);
 adfs_adfs2unix_time(&inode->i_mtime, inode);
 inode->i_atime = inode->i_mtime;
 inode->i_ctime = inode->i_mtime;

 if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &adfs_dir_inode_operations;
  inode->i_fop = &adfs_dir_operations;
 } else if (S_ISREG(inode->i_mode)) {
  inode->i_op = &adfs_file_inode_operations;
  inode->i_fop = &adfs_file_operations;
  inode->i_mapping->a_ops = &adfs_aops;
  ADFS_I(inode)->mmu_private = inode->i_size;
 }

 insert_inode_hash(inode);

out:
 return inode;
}
