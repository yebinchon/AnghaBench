
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int DQUOT_LIMITS_ENABLED ;
 int vfs_quota_disable (struct super_block*,int,int ) ;

__attribute__((used)) static int ocfs2_quota_off(struct super_block *sb, int type, int remount)
{
 if (remount)
  return 0;

 return vfs_quota_disable(sb, type, DQUOT_LIMITS_ENABLED);
}
