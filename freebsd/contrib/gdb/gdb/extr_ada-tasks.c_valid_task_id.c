
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * get_entry_vptr (int) ;

int
valid_task_id (int task)
{
  return get_entry_vptr (task) != ((void*)0);
}
