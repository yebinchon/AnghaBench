
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_v4l2_device {int read_queue; int read_queue_lock; } ;


 int INIT_LIST_HEAD (int *) ;
 int __SPIN_LOCK_UNLOCKED (int ) ;

__attribute__((used)) static void msm_v4l2_dev_init(struct msm_v4l2_device *pmsm_v4l2_dev)
{
 pmsm_v4l2_dev->read_queue_lock =
     __SPIN_LOCK_UNLOCKED(pmsm_v4l2_dev->read_queue_lock);
 INIT_LIST_HEAD(&pmsm_v4l2_dev->read_queue);
}
