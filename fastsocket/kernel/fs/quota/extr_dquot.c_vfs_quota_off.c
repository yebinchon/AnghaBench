
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_SUSPENDED ;
 int DQUOT_USAGE_ENABLED ;
 int vfs_quota_disable (struct super_block*,int,int) ;

int vfs_quota_off(struct super_block *sb, int type, int remount)
{
 return vfs_quota_disable(sb, type, remount ? DQUOT_SUSPENDED :
     (DQUOT_USAGE_ENABLED | DQUOT_LIMITS_ENABLED));
}
