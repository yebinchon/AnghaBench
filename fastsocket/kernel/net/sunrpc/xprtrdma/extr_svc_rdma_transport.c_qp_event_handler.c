
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_xprt {int xpt_flags; } ;
struct TYPE_2__ {int qp; } ;
struct ib_event {int event; TYPE_1__ element; } ;
 int XPT_CLOSE ;
 int dprintk (char*,int,int ) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void qp_event_handler(struct ib_event *event, void *context)
{
 struct svc_xprt *xprt = context;

 switch (event->event) {

 case 134:
 case 136:
 case 128:
 case 130:
  dprintk("svcrdma: QP event %d received for QP=%p\n",
   event->event, event->element.qp);
  break;

 case 133:
 case 131:
 case 129:
 case 132:
 case 135:
 default:
  dprintk("svcrdma: QP ERROR event %d received for QP=%p, "
   "closing transport\n",
   event->event, event->element.qp);
  set_bit(XPT_CLOSE, &xprt->xpt_flags);
  break;
 }
}
