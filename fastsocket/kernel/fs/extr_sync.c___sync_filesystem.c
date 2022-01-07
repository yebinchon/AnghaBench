
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_bdev; TYPE_1__* s_op; int s_bdi; } ;
struct TYPE_2__ {int (* sync_fs ) (struct super_block*,int) ;} ;


 int __sync_blockdev (int ,int) ;
 int stub1 (struct super_block*,int) ;
 int sync_inodes_sb (struct super_block*) ;
 int sync_quota_sb (struct super_block*,int) ;
 int writeback_inodes_sb (struct super_block*) ;
 int writeout_quota_sb (struct super_block*,int) ;

__attribute__((used)) static int __sync_filesystem(struct super_block *sb, int wait)
{




 if (!sb->s_bdi)
  return 0;


 if (!wait) {
  writeout_quota_sb(sb, -1);
  writeback_inodes_sb(sb);
 } else {
  sync_quota_sb(sb, -1);
  sync_inodes_sb(sb);
 }
 if (sb->s_op->sync_fs)
  sb->s_op->sync_fs(sb, wait);
 return __sync_blockdev(sb->s_bdev, wait);
}
