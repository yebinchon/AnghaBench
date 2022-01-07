
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {void* faultstamp; scalar_t__ token_priority; int last_interval; } ;


 void* global_faults ;
 scalar_t__ likely (int) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int swap_token_lock ;
 struct mm_struct* swap_token_mm ;

void grab_swap_token(struct mm_struct *mm)
{
 int current_interval;

 global_faults++;

 current_interval = global_faults - mm->faultstamp;

 if (!spin_trylock(&swap_token_lock))
  return;


 if (swap_token_mm == ((void*)0)) {
  mm->token_priority = mm->token_priority + 2;
  swap_token_mm = mm;
  goto out;
 }

 if (mm != swap_token_mm) {
  if (current_interval < mm->last_interval)
   mm->token_priority++;
  else {
   if (likely(mm->token_priority > 0))
    mm->token_priority--;
  }

  if (mm->token_priority > swap_token_mm->token_priority) {
   mm->token_priority += 2;
   swap_token_mm = mm;
  }
 } else {

  mm->token_priority += 2;
 }

out:
 mm->faultstamp = global_faults;
 mm->last_interval = current_interval;
 spin_unlock(&swap_token_lock);
}
