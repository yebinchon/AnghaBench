
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; } ;
struct jfs_sb_info {struct jfs_log* log; } ;
struct jfs_log {int dummy; } ;


 int FM_MOUNT ;
 struct jfs_sb_info* JFS_SBI (struct super_block*) ;
 int MS_RDONLY ;
 int jfs_err (char*,int) ;
 int lmLogInit (struct jfs_log*) ;
 int txResume (struct super_block*) ;
 int updateSuper (struct super_block*,int ) ;

__attribute__((used)) static int jfs_unfreeze(struct super_block *sb)
{
 struct jfs_sb_info *sbi = JFS_SBI(sb);
 struct jfs_log *log = sbi->log;
 int rc = 0;

 if (!(sb->s_flags & MS_RDONLY)) {
  updateSuper(sb, FM_MOUNT);
  if ((rc = lmLogInit(log)))
   jfs_err("jfs_unlock failed with return code %d", rc);
  else
   txResume(sb);
 }
 return 0;
}
