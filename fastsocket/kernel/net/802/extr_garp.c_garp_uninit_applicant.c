
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {struct garp_port* garp_port; } ;
struct garp_port {struct garp_applicant** applicants; } ;
struct TYPE_2__ {int group_address; } ;
struct garp_application {size_t type; TYPE_1__ proto; } ;
struct garp_applicant {int join_timer; } ;


 int ASSERT_RTNL () ;
 int ETH_ALEN ;
 int GARP_EVENT_TRANSMIT_PDU ;
 int del_timer_sync (int *) ;
 int dev_mc_delete (struct net_device*,int ,int ,int ) ;
 int garp_gid_event (struct garp_applicant*,int ) ;
 int garp_pdu_queue (struct garp_applicant*) ;
 int garp_queue_xmit (struct garp_applicant*) ;
 int garp_release_port (struct net_device*) ;
 int kfree (struct garp_applicant*) ;
 int rcu_assign_pointer (struct garp_applicant*,int *) ;
 int synchronize_rcu () ;

void garp_uninit_applicant(struct net_device *dev, struct garp_application *appl)
{
 struct garp_port *port = dev->garp_port;
 struct garp_applicant *app = port->applicants[appl->type];

 ASSERT_RTNL();

 rcu_assign_pointer(port->applicants[appl->type], ((void*)0));
 synchronize_rcu();



 del_timer_sync(&app->join_timer);
 garp_gid_event(app, GARP_EVENT_TRANSMIT_PDU);
 garp_pdu_queue(app);
 garp_queue_xmit(app);

 dev_mc_delete(dev, appl->proto.group_address, ETH_ALEN, 0);
 kfree(app);
 garp_release_port(dev);
}
