
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct futex_pi_state {int key; int refcount; int * owner; int list; } ;
struct TYPE_2__ {struct futex_pi_state* pi_state_cache; } ;


 int ENOMEM ;
 int FUTEX_KEY_INIT ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int) ;
 TYPE_1__* current ;
 struct futex_pi_state* kzalloc (int,int ) ;
 scalar_t__ likely (struct futex_pi_state*) ;

__attribute__((used)) static int refill_pi_state_cache(void)
{
 struct futex_pi_state *pi_state;

 if (likely(current->pi_state_cache))
  return 0;

 pi_state = kzalloc(sizeof(*pi_state), GFP_KERNEL);

 if (!pi_state)
  return -ENOMEM;

 INIT_LIST_HEAD(&pi_state->list);

 pi_state->owner = ((void*)0);
 atomic_set(&pi_state->refcount, 1);
 pi_state->key = FUTEX_KEY_INIT;

 current->pi_state_cache = pi_state;

 return 0;
}
