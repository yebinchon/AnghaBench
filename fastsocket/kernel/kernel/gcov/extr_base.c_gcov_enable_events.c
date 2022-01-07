
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {struct gcov_info* next; } ;


 int GCOV_ADD ;
 int gcov_event (int ,struct gcov_info*) ;
 int gcov_events_enabled ;
 struct gcov_info* gcov_info_head ;
 int gcov_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void gcov_enable_events(void)
{
 struct gcov_info *info;

 mutex_lock(&gcov_lock);
 gcov_events_enabled = 1;

 for (info = gcov_info_head; info; info = info->next)
  gcov_event(GCOV_ADD, info);
 mutex_unlock(&gcov_lock);
}
