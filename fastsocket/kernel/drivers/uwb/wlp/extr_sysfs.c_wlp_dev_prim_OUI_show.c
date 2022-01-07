
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlp {int mutex; TYPE_2__* dev_info; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int * OUI; } ;
struct TYPE_4__ {TYPE_1__ prim_dev_type; } ;


 int PAGE_SIZE ;
 scalar_t__ __wlp_setup_device_info (struct wlp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ scnprintf (char*,int ,char*,int ,int ,int ) ;

ssize_t wlp_dev_prim_OUI_show(struct wlp *wlp, char *buf)
{
 ssize_t result = 0;
 mutex_lock(&wlp->mutex);
 if (wlp->dev_info == ((void*)0)) {
  result = __wlp_setup_device_info(wlp);
  if (result < 0)
   goto out;
 }
 result = scnprintf(buf, PAGE_SIZE, "%02x:%02x:%02x\n",
      wlp->dev_info->prim_dev_type.OUI[0],
      wlp->dev_info->prim_dev_type.OUI[1],
      wlp->dev_info->prim_dev_type.OUI[2]);
out:
 mutex_unlock(&wlp->mutex);
 return result;
}
