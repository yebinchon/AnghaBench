
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_bdev; } ;


 int sync_blockdev (int ) ;

void ocfs2_sync_blockdev(struct super_block *sb)
{
 sync_blockdev(sb->s_bdev);
}
