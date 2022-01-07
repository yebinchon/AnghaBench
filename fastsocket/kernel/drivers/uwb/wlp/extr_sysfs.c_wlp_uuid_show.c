
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp {int mutex; int uuid; } ;
typedef scalar_t__ ssize_t ;


 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ wlp_wss_uuid_print (char*,int ,int *) ;

ssize_t wlp_uuid_show(struct wlp *wlp, char *buf)
{
 ssize_t result = 0;

 mutex_lock(&wlp->mutex);
 result = wlp_wss_uuid_print(buf, PAGE_SIZE, &wlp->uuid);
 buf[result++] = '\n';
 mutex_unlock(&wlp->mutex);
 return result;
}
