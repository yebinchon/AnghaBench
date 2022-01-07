
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct ocfs2_local_disk_dqblk {int dummy; } ;


 int OCFS2_QBLK_RESERVED_SPACE ;

__attribute__((used)) static inline unsigned int ol_quota_entries_per_block(struct super_block *sb)
{
 return ((sb->s_blocksize - OCFS2_QBLK_RESERVED_SPACE) /
  sizeof(struct ocfs2_local_disk_dqblk));
}
