
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_cpu_dm_data {int dm_alert_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void sched_send_work(unsigned long _data)
{
 struct per_cpu_dm_data *data = (struct per_cpu_dm_data *)_data;

 schedule_work(&data->dm_alert_work);
}
