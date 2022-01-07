
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int * i2_data; } ;
struct minix_inode_info {TYPE_4__ u; } ;
struct minix2_inode {int * i_zone; int i_ctime; int i_atime; int i_mtime; int i_size; int i_nlinks; int i_gid; int i_uid; int i_mode; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_6__ {int tv_sec; } ;
struct TYPE_5__ {int tv_sec; } ;
struct inode {int i_rdev; int i_mode; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; int i_size; int i_nlink; int i_gid; int i_uid; int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;


 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int fs_high2lowgid (int ) ;
 int fs_high2lowuid (int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct minix2_inode* minix_V2_raw_inode (int ,int ,struct buffer_head**) ;
 struct minix_inode_info* minix_i (struct inode*) ;
 int old_encode_dev (int ) ;

__attribute__((used)) static struct buffer_head * V2_minix_update_inode(struct inode * inode)
{
 struct buffer_head * bh;
 struct minix2_inode * raw_inode;
 struct minix_inode_info *minix_inode = minix_i(inode);
 int i;

 raw_inode = minix_V2_raw_inode(inode->i_sb, inode->i_ino, &bh);
 if (!raw_inode)
  return ((void*)0);
 raw_inode->i_mode = inode->i_mode;
 raw_inode->i_uid = fs_high2lowuid(inode->i_uid);
 raw_inode->i_gid = fs_high2lowgid(inode->i_gid);
 raw_inode->i_nlinks = inode->i_nlink;
 raw_inode->i_size = inode->i_size;
 raw_inode->i_mtime = inode->i_mtime.tv_sec;
 raw_inode->i_atime = inode->i_atime.tv_sec;
 raw_inode->i_ctime = inode->i_ctime.tv_sec;
 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
  raw_inode->i_zone[0] = old_encode_dev(inode->i_rdev);
 else for (i = 0; i < 10; i++)
  raw_inode->i_zone[i] = minix_inode->u.i2_data[i];
 mark_buffer_dirty(bh);
 return bh;
}
