
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int DEFENSE_TIMER_PERIOD ;
 scalar_t__ atomic_read (int *) ;
 int defense_work ;
 int ip_vs_dropentry ;
 int ip_vs_random_dropentry () ;
 int schedule_delayed_work (int *,int ) ;
 int update_defense_level () ;

__attribute__((used)) static void defense_work_handler(struct work_struct *work)
{
 update_defense_level();
 if (atomic_read(&ip_vs_dropentry))
  ip_vs_random_dropentry();

 schedule_delayed_work(&defense_work, DEFENSE_TIMER_PERIOD);
}
