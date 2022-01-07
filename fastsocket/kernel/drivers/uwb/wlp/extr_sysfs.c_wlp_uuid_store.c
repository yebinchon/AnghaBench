
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_uuid {int * data; } ;
struct wlp {int mutex; struct wlp_uuid uuid; } ;
typedef int ssize_t ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *) ;

ssize_t wlp_uuid_store(struct wlp *wlp, const char *buf, size_t size)
{
 ssize_t result;
 struct wlp_uuid uuid;

 mutex_lock(&wlp->mutex);
 result = sscanf(buf, "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx "
   "%02hhx %02hhx %02hhx %02hhx ",
   &uuid.data[0] , &uuid.data[1],
   &uuid.data[2] , &uuid.data[3],
   &uuid.data[4] , &uuid.data[5],
   &uuid.data[6] , &uuid.data[7],
   &uuid.data[8] , &uuid.data[9],
   &uuid.data[10], &uuid.data[11],
   &uuid.data[12], &uuid.data[13],
   &uuid.data[14], &uuid.data[15]);
 if (result != 16) {
  result = -EINVAL;
  goto error;
 }
 wlp->uuid = uuid;
error:
 mutex_unlock(&wlp->mutex);
 return result < 0 ? result : size;
}
