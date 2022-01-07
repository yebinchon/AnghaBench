
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat_data {int dummy; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_6__ {int tv_sec; } ;
struct TYPE_5__ {int tv_sec; } ;
struct inode {int i_generation; int i_rdev; int i_mode; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; int i_gid; int i_uid; int i_nlink; } ;
typedef int loff_t ;
typedef int __u16 ;
struct TYPE_8__ {int i_attrs; } ;


 TYPE_4__* REISERFS_I (struct inode*) ;
 int SD_V2_SIZE ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int i_attrs_to_sd_attrs (struct inode*,int *) ;
 int new_encode_dev (int ) ;
 int set_sd_v2_atime (struct stat_data*,int ) ;
 int set_sd_v2_attrs (struct stat_data*,int ) ;
 int set_sd_v2_blocks (struct stat_data*,int ) ;
 int set_sd_v2_ctime (struct stat_data*,int ) ;
 int set_sd_v2_generation (struct stat_data*,int ) ;
 int set_sd_v2_gid (struct stat_data*,int ) ;
 int set_sd_v2_mode (struct stat_data*,int ) ;
 int set_sd_v2_mtime (struct stat_data*,int ) ;
 int set_sd_v2_nlink (struct stat_data*,int ) ;
 int set_sd_v2_rdev (struct stat_data*,int ) ;
 int set_sd_v2_size (struct stat_data*,int ) ;
 int set_sd_v2_uid (struct stat_data*,int ) ;
 int to_fake_used_blocks (struct inode*,int ) ;

__attribute__((used)) static void inode2sd(void *sd, struct inode *inode, loff_t size)
{
 struct stat_data *sd_v2 = (struct stat_data *)sd;
 __u16 flags;

 set_sd_v2_mode(sd_v2, inode->i_mode);
 set_sd_v2_nlink(sd_v2, inode->i_nlink);
 set_sd_v2_uid(sd_v2, inode->i_uid);
 set_sd_v2_size(sd_v2, size);
 set_sd_v2_gid(sd_v2, inode->i_gid);
 set_sd_v2_mtime(sd_v2, inode->i_mtime.tv_sec);
 set_sd_v2_atime(sd_v2, inode->i_atime.tv_sec);
 set_sd_v2_ctime(sd_v2, inode->i_ctime.tv_sec);
 set_sd_v2_blocks(sd_v2, to_fake_used_blocks(inode, SD_V2_SIZE));
 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
  set_sd_v2_rdev(sd_v2, new_encode_dev(inode->i_rdev));
 else
  set_sd_v2_generation(sd_v2, inode->i_generation);
 flags = REISERFS_I(inode)->i_attrs;
 i_attrs_to_sd_attrs(inode, &flags);
 set_sd_v2_attrs(sd_v2, flags);
}
