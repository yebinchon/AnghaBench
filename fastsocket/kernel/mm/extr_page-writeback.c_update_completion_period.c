
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calc_period_shift () ;
 int prop_change_shift (int *,int) ;
 int vm_completions ;
 int vm_dirties ;

__attribute__((used)) static void update_completion_period(void)
{
 int shift = calc_period_shift();
 prop_change_shift(&vm_completions, shift);
 prop_change_shift(&vm_dirties, shift);
}
