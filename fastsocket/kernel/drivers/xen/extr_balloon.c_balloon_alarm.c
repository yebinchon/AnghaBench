
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int balloon_worker ;
 int schedule_work (int *) ;

__attribute__((used)) static void balloon_alarm(unsigned long unused)
{
 schedule_work(&balloon_worker);
}
