
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct futex_pi_state {int refcount; TYPE_1__* owner; int pi_mutex; int list; } ;
struct TYPE_4__ {struct futex_pi_state* pi_state_cache; } ;
struct TYPE_3__ {int pi_lock; } ;


 int atomic_dec_and_test (int *) ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int kfree (struct futex_pi_state*) ;
 int list_del_init (int *) ;
 int rt_mutex_proxy_unlock (int *,TYPE_1__*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void free_pi_state(struct futex_pi_state *pi_state)
{
 if (!atomic_dec_and_test(&pi_state->refcount))
  return;





 if (pi_state->owner) {
  spin_lock_irq(&pi_state->owner->pi_lock);
  list_del_init(&pi_state->list);
  spin_unlock_irq(&pi_state->owner->pi_lock);

  rt_mutex_proxy_unlock(&pi_state->pi_mutex, pi_state->owner);
 }

 if (current->pi_state_cache)
  kfree(pi_state);
 else {





  pi_state->owner = ((void*)0);
  atomic_set(&pi_state->refcount, 1);
  current->pi_state_cache = pi_state;
 }
}
