
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int s_feature_incompat; } ;


 int OCFS2_FEATURE_INCOMPAT_LOCAL_MOUNT ;

__attribute__((used)) static inline int ocfs2_mount_local(struct ocfs2_super *osb)
{
 return (osb->s_feature_incompat & OCFS2_FEATURE_INCOMPAT_LOCAL_MOUNT);
}
