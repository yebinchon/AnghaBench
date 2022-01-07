
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int lock; int fbops; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int lock_fb_info(struct fb_info *info)
{
 mutex_lock(&info->lock);
 if (!info->fbops) {
  mutex_unlock(&info->lock);
  return 0;
 }
 return 1;
}
