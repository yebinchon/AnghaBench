
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_device {int minor; } ;


 int EAGAIN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_ID_MASK ;
 int idr_get_new (int *,struct uio_device*,int*) ;
 scalar_t__ idr_pre_get (int *,int ) ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uio_idr ;

__attribute__((used)) static int uio_get_minor(struct uio_device *idev)
{
 int retval = -ENOMEM;
 int id;

 mutex_lock(&minor_lock);
 if (idr_pre_get(&uio_idr, GFP_KERNEL) == 0)
  goto exit;

 retval = idr_get_new(&uio_idr, idev, &id);
 if (retval < 0) {
  if (retval == -EAGAIN)
   retval = -ENOMEM;
  goto exit;
 }
 idev->minor = id & MAX_ID_MASK;
exit:
 mutex_unlock(&minor_lock);
 return retval;
}
