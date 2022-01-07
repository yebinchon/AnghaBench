
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_device {int minor; } ;


 int idr_remove (int *,int ) ;
 int minor_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uio_idr ;

__attribute__((used)) static void uio_free_minor(struct uio_device *idev)
{
 mutex_lock(&minor_lock);
 idr_remove(&uio_idr, idev->minor);
 mutex_unlock(&minor_lock);
}
