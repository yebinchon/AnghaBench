
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int otherend_id; } ;
struct evtchn_alloc_unbound {int port; int remote_dom; int dom; } ;


 int DOMID_SELF ;
 int EVTCHNOP_alloc_unbound ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_alloc_unbound*) ;
 int xenbus_dev_fatal (struct xenbus_device*,int,char*) ;

int xenbus_alloc_evtchn(struct xenbus_device *dev, int *port)
{
 struct evtchn_alloc_unbound alloc_unbound;
 int err;

 alloc_unbound.dom = DOMID_SELF;
 alloc_unbound.remote_dom = dev->otherend_id;

 err = HYPERVISOR_event_channel_op(EVTCHNOP_alloc_unbound,
       &alloc_unbound);
 if (err)
  xenbus_dev_fatal(dev, err, "allocating event channel");
 else
  *port = alloc_unbound.port;

 return err;
}
