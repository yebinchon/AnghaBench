
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap_token_lock ;
 struct mm_struct* swap_token_mm ;

void __put_swap_token(struct mm_struct *mm)
{
 spin_lock(&swap_token_lock);
 if (likely(mm == swap_token_mm))
  swap_token_mm = ((void*)0);
 spin_unlock(&swap_token_lock);
}
