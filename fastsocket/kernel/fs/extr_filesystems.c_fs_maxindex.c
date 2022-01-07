
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {struct file_system_type* next; } ;


 struct file_system_type* file_systems ;
 int file_systems_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int fs_maxindex(void)
{
 struct file_system_type * tmp;
 int index;

 read_lock(&file_systems_lock);
 for (tmp = file_systems, index = 0 ; tmp ; tmp = tmp->next, index++)
  ;
 read_unlock(&file_systems_lock);
 return index;
}
