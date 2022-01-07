
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int local_alloc_state; int local_alloc_bits; unsigned int local_alloc_default_bits; int osb_lock; int la_enable_wq; int sb; } ;
typedef enum ocfs2_la_event { ____Placeholder_ocfs2_la_event } ocfs2_la_event ;


 int OCFS2_LA_DISABLED ;
 int OCFS2_LA_ENABLE_INTERVAL ;
 int OCFS2_LA_EVENT_ENOSPC ;
 int OCFS2_LA_EVENT_FRAGMENTED ;
 int OCFS2_LA_THROTTLED ;
 int WARN_ON_ONCE (int) ;
 unsigned int ocfs2_megabytes_to_clusters (int ,int) ;
 int ocfs2_wq ;
 int queue_delayed_work (int ,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ocfs2_recalc_la_window(struct ocfs2_super *osb,
      enum ocfs2_la_event event)
{
 unsigned int bits;
 int state;

 spin_lock(&osb->osb_lock);
 if (osb->local_alloc_state == OCFS2_LA_DISABLED) {
  WARN_ON_ONCE(osb->local_alloc_state == OCFS2_LA_DISABLED);
  goto out_unlock;
 }




 if (event == OCFS2_LA_EVENT_ENOSPC ||
     event == OCFS2_LA_EVENT_FRAGMENTED) {





  bits = osb->local_alloc_bits >> 1;
  if (bits > ocfs2_megabytes_to_clusters(osb->sb, 1)) {







   osb->local_alloc_state = OCFS2_LA_THROTTLED;
   osb->local_alloc_bits = bits;
  } else {
   osb->local_alloc_state = OCFS2_LA_DISABLED;
  }
  queue_delayed_work(ocfs2_wq, &osb->la_enable_wq,
       OCFS2_LA_ENABLE_INTERVAL);
  goto out_unlock;
 }







 if (osb->local_alloc_state != OCFS2_LA_THROTTLED)
  osb->local_alloc_bits = osb->local_alloc_default_bits;

out_unlock:
 state = osb->local_alloc_state;
 spin_unlock(&osb->osb_lock);

 return state;
}
