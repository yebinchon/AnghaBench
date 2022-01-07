
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int OCFS2_FEATURE_RO_COMPAT_GRPQUOTA ;
 int OCFS2_FEATURE_RO_COMPAT_USRQUOTA ;
 scalar_t__ OCFS2_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 scalar_t__ OCFS2_QWRITE_CREDITS ;

__attribute__((used)) static inline int ocfs2_quota_trans_credits(struct super_block *sb)
{
 int credits = 0;

 if (OCFS2_HAS_RO_COMPAT_FEATURE(sb, OCFS2_FEATURE_RO_COMPAT_USRQUOTA))
  credits += OCFS2_QWRITE_CREDITS;
 if (OCFS2_HAS_RO_COMPAT_FEATURE(sb, OCFS2_FEATURE_RO_COMPAT_GRPQUOTA))
  credits += OCFS2_QWRITE_CREDITS;
 return credits;
}
