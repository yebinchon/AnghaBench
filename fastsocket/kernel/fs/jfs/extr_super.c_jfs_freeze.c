
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct jfs_sb_info {struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;


 int FM_CLEAN ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int MS_RDONLY ;
 int lmLogShutdown (struct jfs_log*) ;
 int txQuiesce (struct super_block*) ;
 int updateSuper (struct super_block*,int ) ;

__attribute__((used)) static int jfs_freeze(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct jfs_log *log = sbi->log;

 if (!(sb->s_flags & MS_RDONLY)) {
  txQuiesce(sb);
  lmLogShutdown(log);
  updateSuper(sb, FM_CLEAN);
 }
 return 0;
}
