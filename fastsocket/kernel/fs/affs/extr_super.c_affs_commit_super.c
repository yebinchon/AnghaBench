
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
struct affs_sb_info {struct buffer_head* s_root_bh; } ;
struct affs_root_tail {int disk_change; int bm_flag; } ;


 struct affs_root_tail* AFFS_ROOT_TAIL (struct super_block*,struct buffer_head*) ;
 struct affs_sb_info* AFFS_SB (struct super_block*) ;
 int affs_fix_checksum (struct super_block*,struct buffer_head*) ;
 int cpu_to_be32 (int) ;
 int get_seconds () ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int secs_to_datestamp (int ,int *) ;

__attribute__((used)) static void
affs_commit_super(struct super_block *sb, int clean)
{
 struct affs_sb_info *sbi = AFFS_SB(sb);
 struct buffer_head *bh = sbi->s_root_bh;
 struct affs_root_tail *tail = AFFS_ROOT_TAIL(sb, bh);

 tail->bm_flag = cpu_to_be32(clean);
 secs_to_datestamp(get_seconds(), &tail->disk_change);
 affs_fix_checksum(sb, bh);
 mark_buffer_dirty(bh);
}
