
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int otherend_id; } ;
struct evtchn_bind_interdomain {int remote_port; int local_port; int remote_dom; } ;


 int EVTCHNOP_bind_interdomain ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_bind_interdomain*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*,int,int ) ;

int xenbus_bind_evtchn(struct xenbus_device *dev, int remote_port, int *port)
{
 struct evtchn_bind_interdomain bind_interdomain;
 int err;

 bind_interdomain.remote_dom = dev->otherend_id;
 bind_interdomain.remote_port = remote_port;

 err = HYPERVISOR_event_channel_op(EVTCHNOP_bind_interdomain,
       &bind_interdomain);
 if (err)
  xenbus_dev_fatal(dev, err,
     "binding to event channel %d from domain %d",
     remote_port, dev->otherend_id);
 else
  *port = bind_interdomain.local_port;

 return err;
}
