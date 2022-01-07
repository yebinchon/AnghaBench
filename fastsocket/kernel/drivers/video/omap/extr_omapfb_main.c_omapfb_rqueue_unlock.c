
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omapfb_device {int rqueue_mutex; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void omapfb_rqueue_unlock(struct omapfb_device *fbdev)
{
 mutex_unlock(&fbdev->rqueue_mutex);
}
