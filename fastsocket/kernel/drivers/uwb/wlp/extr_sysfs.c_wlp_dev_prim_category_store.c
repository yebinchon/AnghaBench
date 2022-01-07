
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct wlp {int mutex; TYPE_2__* dev_info; } ;
typedef size_t ssize_t ;
struct TYPE_3__ {scalar_t__ category; } ;
struct TYPE_4__ {TYPE_1__ prim_dev_type; } ;


 size_t EINVAL ;
 scalar_t__ WLP_DEV_CAT_COMPUTER ;
 scalar_t__ WLP_DEV_CAT_OTHER ;
 scalar_t__ WLP_DEV_CAT_TELEPHONE ;
 size_t __wlp_alloc_device_info (struct wlp*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t sscanf (char const*,char*,scalar_t__*) ;

ssize_t wlp_dev_prim_category_store(struct wlp *wlp, const char *buf,
        size_t size)
{
 ssize_t result;
 u16 cat;
 mutex_lock(&wlp->mutex);
 if (wlp->dev_info == ((void*)0)) {
  result = __wlp_alloc_device_info(wlp);
  if (result < 0)
   goto out;
 }
 result = sscanf(buf, "%hu", &cat);
 if ((cat >= WLP_DEV_CAT_COMPUTER && cat <= WLP_DEV_CAT_TELEPHONE)
     || cat == WLP_DEV_CAT_OTHER)
  wlp->dev_info->prim_dev_type.category = cat;
 else
  result = -EINVAL;
out:
 mutex_unlock(&wlp->mutex);
 return result < 0 ? result : size;
}
