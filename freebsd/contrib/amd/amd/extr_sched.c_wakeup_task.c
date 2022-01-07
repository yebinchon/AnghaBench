
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchan_t ;


 int wakeup (int ) ;

void
wakeup_task(int rc, int term, wchan_t wchan)
{
  wakeup(wchan);
}
