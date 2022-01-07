
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_sync {int wake_lock; } ;


 int wake_lock_destroy (int *) ;

__attribute__((used)) static int msm_sync_destroy(struct msm_sync *sync)
{
 wake_lock_destroy(&sync->wake_lock);
 return 0;
}
