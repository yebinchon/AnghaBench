
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct garp_applicant {int lock; } ;


 int GARP_EVENT_TRANSMIT_PDU ;
 int garp_gid_event (struct garp_applicant*,int ) ;
 int garp_join_timer_arm (struct garp_applicant*) ;
 int garp_pdu_queue (struct garp_applicant*) ;
 int garp_queue_xmit (struct garp_applicant*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void garp_join_timer(unsigned long data)
{
 struct garp_applicant *app = (struct garp_applicant *)data;

 spin_lock(&app->lock);
 garp_gid_event(app, GARP_EVENT_TRANSMIT_PDU);
 garp_pdu_queue(app);
 spin_unlock(&app->lock);

 garp_queue_xmit(app);
 garp_join_timer_arm(app);
}
