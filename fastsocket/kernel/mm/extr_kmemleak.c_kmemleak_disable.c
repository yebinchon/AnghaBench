
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cleanup_work ;
 int kmemleak_early_log ;
 int kmemleak_enabled ;
 int kmemleak_error ;
 int kmemleak_initialized ;
 int pr_info (char*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void kmemleak_disable(void)
{

 if (atomic_cmpxchg(&kmemleak_error, 0, 1))
  return;


 atomic_set(&kmemleak_early_log, 0);
 atomic_set(&kmemleak_enabled, 0);


 if (atomic_read(&kmemleak_initialized))
  schedule_work(&cleanup_work);

 pr_info("Kernel memory leak detector disabled\n");
}
