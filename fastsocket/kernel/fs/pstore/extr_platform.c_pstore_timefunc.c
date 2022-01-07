
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PSTORE_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ pstore_new_entry ;
 int pstore_timer ;
 int pstore_work ;
 int schedule_work (int *) ;

__attribute__((used)) static void pstore_timefunc(unsigned long dummy)
{
 if (pstore_new_entry) {
  pstore_new_entry = 0;
  schedule_work(&pstore_work);
 }

 mod_timer(&pstore_timer, jiffies + PSTORE_INTERVAL);
}
