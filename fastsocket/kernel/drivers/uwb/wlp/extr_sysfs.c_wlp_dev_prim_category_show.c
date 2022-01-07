
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp {int mutex; TYPE_2__* dev_info; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int category; } ;
struct TYPE_4__ {TYPE_1__ prim_dev_type; } ;


 int PAGE_SIZE ;
 scalar_t__ __wlp_setup_device_info (struct wlp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scnprintf (char*,int ,char*,int ) ;
 int wlp_dev_category_str (int ) ;

ssize_t wlp_dev_prim_category_show(struct wlp *wlp, char *buf)
{
 ssize_t result = 0;
 mutex_lock(&wlp->mutex);
 if (wlp->dev_info == ((void*)0)) {
  result = __wlp_setup_device_info(wlp);
  if (result < 0)
   goto out;
 }
 result = scnprintf(buf, PAGE_SIZE, "%s\n",
    wlp_dev_category_str(wlp->dev_info->prim_dev_type.category));
out:
 mutex_unlock(&wlp->mutex);
 return result;
}
