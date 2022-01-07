
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * files; } ;
struct super_block {TYPE_1__ s_dquot; } ;
struct ocfs2_super {struct super_block* sb; } ;
struct inode {int dummy; } ;


 int DQUOT_LIMITS_ENABLED ;
 int DQUOT_USAGE_ENABLED ;
 int MAXQUOTAS ;
 struct inode* igrab (int ) ;
 int iput (struct inode*) ;
 int sb_has_quota_loaded (struct super_block*,int) ;
 int vfs_quota_disable (struct super_block*,int,int) ;

__attribute__((used)) static void ocfs2_disable_quotas(struct ocfs2_super *osb)
{
 int type;
 struct inode *inode;
 struct super_block *sb = osb->sb;



 for (type = 0; type < MAXQUOTAS; type++) {
  if (!sb_has_quota_loaded(sb, type))
   continue;
  inode = igrab(sb->s_dquot.files[type]);



  vfs_quota_disable(sb, type, DQUOT_USAGE_ENABLED |
         DQUOT_LIMITS_ENABLED);
  if (!inode)
   continue;
  iput(inode);
 }
}
