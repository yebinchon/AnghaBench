
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_flags; int osb_lock; } ;


 int OCFS2_OSB_HARD_RO ;
 int OCFS2_OSB_SOFT_RO ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ocfs2_set_ro_flag(struct ocfs2_super *osb,
         int hard)
{
 spin_lock(&osb->osb_lock);
 osb->osb_flags &= ~(OCFS2_OSB_SOFT_RO|OCFS2_OSB_HARD_RO);
 if (hard)
  osb->osb_flags |= OCFS2_OSB_HARD_RO;
 else
  osb->osb_flags |= OCFS2_OSB_SOFT_RO;
 spin_unlock(&osb->osb_lock);
}
