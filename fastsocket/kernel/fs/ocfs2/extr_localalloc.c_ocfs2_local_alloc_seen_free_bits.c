
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {scalar_t__ local_alloc_state; unsigned int local_alloc_default_bits; int osb_lock; int la_enable_wq; } ;


 scalar_t__ OCFS2_LA_DISABLED ;
 scalar_t__ OCFS2_LA_ENABLED ;
 scalar_t__ OCFS2_LA_THROTTLED ;
 int cancel_delayed_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ocfs2_local_alloc_seen_free_bits(struct ocfs2_super *osb,
          unsigned int num_clusters)
{
 spin_lock(&osb->osb_lock);
 if (osb->local_alloc_state == OCFS2_LA_DISABLED ||
     osb->local_alloc_state == OCFS2_LA_THROTTLED)
  if (num_clusters >= osb->local_alloc_default_bits) {
   cancel_delayed_work(&osb->la_enable_wq);
   osb->local_alloc_state = OCFS2_LA_ENABLED;
  }
 spin_unlock(&osb->osb_lock);
}
