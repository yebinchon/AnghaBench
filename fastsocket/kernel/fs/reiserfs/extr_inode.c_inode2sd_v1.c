
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct stat_data_v1 {int dummy; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_6__ {int tv_sec; } ;
struct TYPE_5__ {int tv_sec; } ;
struct inode {int i_rdev; int i_mode; TYPE_3__ i_mtime; TYPE_2__ i_ctime; TYPE_1__ i_atime; int i_nlink; int i_gid; int i_uid; } ;
typedef int loff_t ;
struct TYPE_8__ {int i_first_direct_byte; } ;


 TYPE_4__* REISERFS_I (struct inode*) ;
 int SD_V1_SIZE ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 int new_encode_dev (int ) ;
 int set_sd_v1_atime (struct stat_data_v1*,int ) ;
 int set_sd_v1_blocks (struct stat_data_v1*,int ) ;
 int set_sd_v1_ctime (struct stat_data_v1*,int ) ;
 int set_sd_v1_first_direct_byte (struct stat_data_v1*,int ) ;
 int set_sd_v1_gid (struct stat_data_v1*,int ) ;
 int set_sd_v1_mode (struct stat_data_v1*,int ) ;
 int set_sd_v1_mtime (struct stat_data_v1*,int ) ;
 int set_sd_v1_nlink (struct stat_data_v1*,int ) ;
 int set_sd_v1_rdev (struct stat_data_v1*,int ) ;
 int set_sd_v1_size (struct stat_data_v1*,int ) ;
 int set_sd_v1_uid (struct stat_data_v1*,int ) ;
 int to_fake_used_blocks (struct inode*,int ) ;

__attribute__((used)) static void inode2sd_v1(void *sd, struct inode *inode, loff_t size)
{
 struct stat_data_v1 *sd_v1 = (struct stat_data_v1 *)sd;

 set_sd_v1_mode(sd_v1, inode->i_mode);
 set_sd_v1_uid(sd_v1, inode->i_uid);
 set_sd_v1_gid(sd_v1, inode->i_gid);
 set_sd_v1_nlink(sd_v1, inode->i_nlink);
 set_sd_v1_size(sd_v1, size);
 set_sd_v1_atime(sd_v1, inode->i_atime.tv_sec);
 set_sd_v1_ctime(sd_v1, inode->i_ctime.tv_sec);
 set_sd_v1_mtime(sd_v1, inode->i_mtime.tv_sec);

 if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
  set_sd_v1_rdev(sd_v1, new_encode_dev(inode->i_rdev));
 else
  set_sd_v1_blocks(sd_v1, to_fake_used_blocks(inode, SD_V1_SIZE));


 set_sd_v1_first_direct_byte(sd_v1,
        REISERFS_I(inode)->i_first_direct_byte);
}
