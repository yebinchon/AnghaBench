
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_xprt {int xpt_flags; } ;
struct ib_event {int event; } ;


 int XPT_CLOSE ;
 int dprintk (char*,int ,void*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void cq_event_handler(struct ib_event *event, void *context)
{
 struct svc_xprt *xprt = context;
 dprintk("svcrdma: received CQ event id=%d, context=%p\n",
  event->event, context);
 set_bit(XPT_CLOSE, &xprt->xpt_flags);
}
