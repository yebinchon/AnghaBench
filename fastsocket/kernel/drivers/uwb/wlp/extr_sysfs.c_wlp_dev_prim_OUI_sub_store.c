
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u8 ;
struct wlp {int mutex; TYPE_2__* dev_info; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {unsigned int OUIsubdiv; } ;
struct TYPE_4__ {TYPE_1__ prim_dev_type; } ;


 size_t EINVAL ;
 size_t __wlp_alloc_device_info (struct wlp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t sscanf (char const*,char*,unsigned int*) ;

ssize_t wlp_dev_prim_OUI_sub_store(struct wlp *wlp, const char *buf,
       size_t size)
{
 ssize_t result;
 unsigned sub;
 u8 max_sub = ~0;
 mutex_lock(&wlp->mutex);
 if (wlp->dev_info == ((void*)0)) {
  result = __wlp_alloc_device_info(wlp);
  if (result < 0)
   goto out;
 }
 result = sscanf(buf, "%u", &sub);
 if (sub <= max_sub)
  wlp->dev_info->prim_dev_type.OUIsubdiv = sub;
 else
  result = -EINVAL;
out:
 mutex_unlock(&wlp->mutex);
 return result < 0 ? result : size;
}
