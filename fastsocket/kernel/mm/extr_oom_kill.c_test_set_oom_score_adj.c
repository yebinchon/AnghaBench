
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sighand_struct {int siglock; } ;
struct TYPE_6__ {TYPE_2__* signal; TYPE_1__* mm; struct sighand_struct* sighand; } ;
struct TYPE_5__ {int oom_score_adj; } ;
struct TYPE_4__ {int oom_disable_count; } ;


 int OOM_SCORE_ADJ_MIN ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 TYPE_3__* current ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int test_set_oom_score_adj(int new_val)
{
 struct sighand_struct *sighand = current->sighand;
 int old_val;

 spin_lock_irq(&sighand->siglock);
 old_val = current->signal->oom_score_adj;
 if (new_val != old_val) {
  if (new_val == OOM_SCORE_ADJ_MIN)
   atomic_inc(&current->mm->oom_disable_count);
  else if (old_val == OOM_SCORE_ADJ_MIN)
   atomic_dec(&current->mm->oom_disable_count);
  current->signal->oom_score_adj = new_val;
 }
 spin_unlock_irq(&sighand->siglock);

 return old_val;
}
