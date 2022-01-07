
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int max_slots; struct ocfs2_recovery_map* recovery_map; int recovery_event; int * recovery_thread_task; scalar_t__ disable_recovery; int recovery_lock; } ;
struct ocfs2_recovery_map {unsigned int* rm_entries; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int init_waitqueue_head (int *) ;
 struct ocfs2_recovery_map* kzalloc (int,int ) ;
 int mlog_errno (int) ;
 int mutex_init (int *) ;

int ocfs2_recovery_init(struct ocfs2_super *osb)
{
 struct ocfs2_recovery_map *rm;

 mutex_init(&osb->recovery_lock);
 osb->disable_recovery = 0;
 osb->recovery_thread_task = ((void*)0);
 init_waitqueue_head(&osb->recovery_event);

 rm = kzalloc(sizeof(struct ocfs2_recovery_map) +
       osb->max_slots * sizeof(unsigned int),
       GFP_KERNEL);
 if (!rm) {
  mlog_errno(-ENOMEM);
  return -ENOMEM;
 }

 rm->rm_entries = (unsigned int *)((char *)rm +
       sizeof(struct ocfs2_recovery_map));
 osb->recovery_map = rm;

 return 0;
}
