
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_ls {int ls_wait_general; int ls_timer; } ;
struct TYPE_2__ {int ci_recover_timer; } ;


 int HZ ;
 TYPE_1__ dlm_config ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int wake_up (int *) ;

__attribute__((used)) static void dlm_wait_timer_fn(unsigned long data)
{
 struct dlm_ls *ls = (struct dlm_ls *) data;
 mod_timer(&ls->ls_timer, jiffies + (dlm_config.ci_recover_timer * HZ));
 wake_up(&ls->ls_wait_general);
}
