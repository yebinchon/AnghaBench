
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp_wssid_e {int node; int * info; } ;
struct wlp_wss_tmp_info {int dummy; } ;
struct wlp_neighbor_e {int wssid; } ;
struct wlp {TYPE_2__* rc; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int kfree (struct wlp_wssid_e*) ;
 void* kzalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static struct wlp_wssid_e *wlp_create_wssid_e(struct wlp *wlp,
           struct wlp_neighbor_e *neighbor)
{
 struct device *dev = &wlp->rc->uwb_dev.dev;
 struct wlp_wssid_e *wssid_e;

 wssid_e = kzalloc(sizeof(*wssid_e), GFP_KERNEL);
 if (wssid_e == ((void*)0)) {
  dev_err(dev, "WLP: unable to allocate memory "
   "for WSS information.\n");
  goto error_alloc;
 }
 wssid_e->info = kzalloc(sizeof(struct wlp_wss_tmp_info), GFP_KERNEL);
 if (wssid_e->info == ((void*)0)) {
  dev_err(dev, "WLP: unable to allocate memory "
   "for temporary WSS information.\n");
  kfree(wssid_e);
  wssid_e = ((void*)0);
  goto error_alloc;
 }
 list_add(&wssid_e->node, &neighbor->wssid);
error_alloc:
 return wssid_e;
}
