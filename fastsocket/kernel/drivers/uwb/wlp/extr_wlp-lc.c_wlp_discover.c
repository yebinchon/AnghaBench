
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp {int nbmutex; TYPE_2__* rc; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {struct device dev; } ;
struct TYPE_4__ {TYPE_1__ uwb_dev; } ;


 int __wlp_neighbors_release (struct wlp*) ;
 int dev_err (struct device*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_dev_for_each (TYPE_2__*,int ,struct wlp*) ;
 int wlp_add_neighbor_helper ;
 int wlp_discover_all_neighbors (struct wlp*) ;

ssize_t wlp_discover(struct wlp *wlp)
{
 int result = 0;
 struct device *dev = &wlp->rc->uwb_dev.dev;

 mutex_lock(&wlp->nbmutex);

 __wlp_neighbors_release(wlp);

 result = uwb_dev_for_each(wlp->rc, wlp_add_neighbor_helper, wlp);
 if (result < 0) {

  __wlp_neighbors_release(wlp);
  goto error_dev_for_each;
 }

 result = wlp_discover_all_neighbors(wlp);

 if (result < 0) {
  dev_err(dev, "Unable to fully discover neighborhood. \n");
  result = 0;
 }
error_dev_for_each:
 mutex_unlock(&wlp->nbmutex);
 return result;
}
