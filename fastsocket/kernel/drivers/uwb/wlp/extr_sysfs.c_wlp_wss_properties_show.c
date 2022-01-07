
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss {int mutex; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int __wlp_wss_properties_show (struct wlp_wss*,char*,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static ssize_t wlp_wss_properties_show(struct wlp_wss *wss, char *buf)
{
 int result = 0;

 if (mutex_lock_interruptible(&wss->mutex))
  goto out;
 result = __wlp_wss_properties_show(wss, buf, PAGE_SIZE);
 mutex_unlock(&wss->mutex);
out:
 return result;
}
