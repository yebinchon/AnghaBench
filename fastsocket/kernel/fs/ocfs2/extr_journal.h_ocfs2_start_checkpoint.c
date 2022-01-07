
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int checkpoint_event; int needs_checkpoint; } ;


 int atomic_set (int *,int) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void ocfs2_start_checkpoint(struct ocfs2_super *osb)
{
 atomic_set(&osb->needs_checkpoint, 1);
 wake_up(&osb->checkpoint_event);
}
