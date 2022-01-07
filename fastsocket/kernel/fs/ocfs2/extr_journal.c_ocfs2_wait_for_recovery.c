
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int recovery_event; } ;


 int ocfs2_recovery_completed (struct ocfs2_super*) ;
 int wait_event (int ,int ) ;

void ocfs2_wait_for_recovery(struct ocfs2_super *osb)
{
 wait_event(osb->recovery_event, ocfs2_recovery_completed(osb));
}
