
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ocfs2_local_disk_dqblk {int dummy; } ;


 int ol_quota_entries_per_block (struct super_block*) ;

__attribute__((used)) static unsigned int ol_dqblk_block_off(struct super_block *sb, int c, int off)
{
 int epb = ol_quota_entries_per_block(sb);

 return (off % epb) * sizeof(struct ocfs2_local_disk_dqblk);
}
