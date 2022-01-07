
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {TYPE_1__* delays; } ;
struct TYPE_2__ {int lock; } ;


 int GFP_KERNEL ;
 int delayacct_cache ;
 TYPE_1__* kmem_cache_zalloc (int ,int ) ;
 int spin_lock_init (int *) ;

void __delayacct_tsk_init(struct task_struct *tsk)
{
 tsk->delays = kmem_cache_zalloc(delayacct_cache, GFP_KERNEL);
 if (tsk->delays)
  spin_lock_init(&tsk->delays->lock);
}
