
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int HZ ;
 int cache_clean () ;
 int cache_cleaner ;
 int cache_list ;
 scalar_t__ list_empty (int *) ;
 int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static void do_cache_clean(struct work_struct *work)
{
 int delay = 5;
 if (cache_clean() == -1)
  delay = round_jiffies_relative(30*HZ);

 if (list_empty(&cache_list))
  delay = 0;

 if (delay)
  schedule_delayed_work(&cache_cleaner, delay);
}
