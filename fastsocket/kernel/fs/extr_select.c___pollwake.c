
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct poll_wqueues* private; } ;
typedef TYPE_1__ wait_queue_t ;
struct poll_wqueues {int triggered; int polling_task; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int default_wake_function (int *,unsigned int,int,void*) ;
 int dummy_wait ;
 int smp_wmb () ;

__attribute__((used)) static int __pollwake(wait_queue_t *wait, unsigned mode, int sync, void *key)
{
 struct poll_wqueues *pwq = wait->private;
 DECLARE_WAITQUEUE(dummy_wait, pwq->polling_task);
 smp_wmb();
 pwq->triggered = 1;
 return default_wake_function(&dummy_wait, mode, sync, key);
}
