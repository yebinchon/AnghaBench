
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_lock; int s_inode_steal_slot; } ;
typedef int s16 ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline s16 ocfs2_get_inode_steal_slot(struct ocfs2_super *osb)
{
 s16 slot;

 spin_lock(&osb->osb_lock);
 slot = osb->s_inode_steal_slot;
 spin_unlock(&osb->osb_lock);

 return slot;
}
