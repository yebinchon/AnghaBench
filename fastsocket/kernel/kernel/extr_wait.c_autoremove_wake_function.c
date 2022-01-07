
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int task_list; } ;
typedef TYPE_1__ wait_queue_t ;


 int default_wake_function (TYPE_1__*,unsigned int,int,void*) ;
 int list_del_init (int *) ;

int autoremove_wake_function(wait_queue_t *wait, unsigned mode, int sync, void *key)
{
 int ret = default_wake_function(wait, mode, sync, key);

 if (ret)
  list_del_init(&wait->task_list);
 return ret;
}
