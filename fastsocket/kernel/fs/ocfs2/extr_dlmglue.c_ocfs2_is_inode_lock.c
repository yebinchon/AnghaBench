
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {scalar_t__ l_type; } ;


 scalar_t__ OCFS2_LOCK_TYPE_META ;
 scalar_t__ OCFS2_LOCK_TYPE_OPEN ;
 scalar_t__ OCFS2_LOCK_TYPE_RW ;

__attribute__((used)) static inline int ocfs2_is_inode_lock(struct ocfs2_lock_res *lockres)
{
 return lockres->l_type == OCFS2_LOCK_TYPE_META ||
  lockres->l_type == OCFS2_LOCK_TYPE_RW ||
  lockres->l_type == OCFS2_LOCK_TYPE_OPEN;
}
