
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct wlp* data; int cb; } ;
struct TYPE_5__ {int channel_changed; struct uwb_rc* rc; } ;
struct wlp {TYPE_3__ uwb_notifs_handler; struct uwb_rc* rc; TYPE_1__ pal; int eda; struct net_device* ndev; int * start_queue; int * stop_queue; int * xmit_frame; int * fill_device_info; } ;
struct uwb_rc {int dummy; } ;
struct net_device {int dummy; } ;


 int BUG_ON (int ) ;
 int uwb_notifs_deregister (struct uwb_rc*,TYPE_3__*) ;
 int uwb_notifs_register (struct uwb_rc*,TYPE_3__*) ;
 int uwb_pal_init (TYPE_1__*) ;
 int uwb_pal_register (TYPE_1__*) ;
 int wlp_channel_changed ;
 int wlp_eda_init (int *) ;
 int wlp_uwb_notifs_cb ;

int wlp_setup(struct wlp *wlp, struct uwb_rc *rc, struct net_device *ndev)
{
 int result;

 BUG_ON(wlp->fill_device_info == ((void*)0));
 BUG_ON(wlp->xmit_frame == ((void*)0));
 BUG_ON(wlp->stop_queue == ((void*)0));
 BUG_ON(wlp->start_queue == ((void*)0));

 wlp->rc = rc;
 wlp->ndev = ndev;
 wlp_eda_init(&wlp->eda);
 wlp->uwb_notifs_handler.cb = wlp_uwb_notifs_cb;
 wlp->uwb_notifs_handler.data = wlp;
 uwb_notifs_register(rc, &wlp->uwb_notifs_handler);

 uwb_pal_init(&wlp->pal);
 wlp->pal.rc = rc;
 wlp->pal.channel_changed = wlp_channel_changed;
 result = uwb_pal_register(&wlp->pal);
 if (result < 0)
  uwb_notifs_deregister(wlp->rc, &wlp->uwb_notifs_handler);

 return result;
}
