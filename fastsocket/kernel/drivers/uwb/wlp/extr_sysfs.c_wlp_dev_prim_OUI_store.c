
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wlp {int mutex; TYPE_2__* dev_info; } ;
typedef int ssize_t ;
struct TYPE_3__ {int OUI; } ;
struct TYPE_4__ {TYPE_1__ prim_dev_type; } ;
typedef int OUI ;


 int EINVAL ;
 int __wlp_alloc_device_info (struct wlp*) ;
 int memcpy (int ,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,int *,int *,int *) ;

ssize_t wlp_dev_prim_OUI_store(struct wlp *wlp, const char *buf, size_t size)
{
 ssize_t result;
 u8 OUI[3];
 mutex_lock(&wlp->mutex);
 if (wlp->dev_info == ((void*)0)) {
  result = __wlp_alloc_device_info(wlp);
  if (result < 0)
   goto out;
 }
 result = sscanf(buf, "%hhx:%hhx:%hhx",
   &OUI[0], &OUI[1], &OUI[2]);
 if (result != 3) {
  result = -EINVAL;
  goto out;
 } else
  memcpy(wlp->dev_info->prim_dev_type.OUI, OUI, sizeof(OUI));
out:
 mutex_unlock(&wlp->mutex);
 return result < 0 ? result : size;
}
