
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct TYPE_8__ {int * i2_data; } ;
struct minix_inode_info {TYPE_4__ u; } ;
struct minix2_inode {int * i_zone; int i_ctime; int i_atime; int i_mtime; int i_size; int i_nlinks; scalar_t__ i_gid; scalar_t__ i_uid; int i_mode; } ;
struct TYPE_7__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_6__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct inode {scalar_t__ i_blocks; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; int i_size; int i_nlink; scalar_t__ i_gid; scalar_t__ i_uid; int i_mode; int i_ino; int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ gid_t ;


 int EIO ;
 struct inode* ERR_PTR (int ) ;
 int brelse (struct buffer_head*) ;
 int iget_failed (struct inode*) ;
 struct minix2_inode* minix_V2_raw_inode (int ,int ,struct buffer_head**) ;
 struct minix_inode_info* minix_i (struct inode*) ;
 int minix_set_inode (struct inode*,int ) ;
 int old_decode_dev (int ) ;
 int unlock_new_inode (struct inode*) ;

__attribute__((used)) static struct inode *V2_minix_iget(struct inode *inode)
{
 struct buffer_head * bh;
 struct minix2_inode * raw_inode;
 struct minix_inode_info *minix_inode = minix_i(inode);
 int i;

 raw_inode = minix_V2_raw_inode(inode->i_sb, inode->i_ino, &bh);
 if (!raw_inode) {
  iget_failed(inode);
  return ERR_PTR(-EIO);
 }
 inode->i_mode = raw_inode->i_mode;
 inode->i_uid = (uid_t)raw_inode->i_uid;
 inode->i_gid = (gid_t)raw_inode->i_gid;
 inode->i_nlink = raw_inode->i_nlinks;
 inode->i_size = raw_inode->i_size;
 inode->i_mtime.tv_sec = raw_inode->i_mtime;
 inode->i_atime.tv_sec = raw_inode->i_atime;
 inode->i_ctime.tv_sec = raw_inode->i_ctime;
 inode->i_mtime.tv_nsec = 0;
 inode->i_atime.tv_nsec = 0;
 inode->i_ctime.tv_nsec = 0;
 inode->i_blocks = 0;
 for (i = 0; i < 10; i++)
  minix_inode->u.i2_data[i] = raw_inode->i_zone[i];
 minix_set_inode(inode, old_decode_dev(raw_inode->i_zone[0]));
 brelse(bh);
 unlock_new_inode(inode);
 return inode;
}
