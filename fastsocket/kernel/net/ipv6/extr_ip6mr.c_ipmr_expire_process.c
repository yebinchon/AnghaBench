
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipmr_do_expire_process (unsigned long) ;
 int ipmr_expire_timer ;
 scalar_t__ jiffies ;
 int mfc_unres_lock ;
 int * mfc_unres_queue ;
 int mod_timer (int *,scalar_t__) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ipmr_expire_process(unsigned long dummy)
{
 if (!spin_trylock(&mfc_unres_lock)) {
  mod_timer(&ipmr_expire_timer, jiffies + 1);
  return;
 }

 if (mfc_unres_queue != ((void*)0))
  ipmr_do_expire_process(dummy);

 spin_unlock(&mfc_unres_lock);
}
