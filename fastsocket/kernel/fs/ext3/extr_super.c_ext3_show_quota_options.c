
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {int dummy; } ;
struct ext3_sb_info {int s_jquota_fmt; char** s_qf_names; int s_mount_opt; } ;


 int EXT3_MOUNT_GRPQUOTA ;
 int EXT3_MOUNT_USRQUOTA ;
 struct ext3_sb_info* EXT3_SB (struct super_block*) ;
 size_t GRPQUOTA ;



 size_t USRQUOTA ;
 int seq_printf (struct seq_file*,char*,char*) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static inline void ext3_show_quota_options(struct seq_file *seq, struct super_block *sb)
{
}
