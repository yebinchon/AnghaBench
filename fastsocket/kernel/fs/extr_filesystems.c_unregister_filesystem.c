
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_system_type {struct file_system_type* next; } ;


 int EINVAL ;
 struct file_system_type* file_systems ;
 int file_systems_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int unregister_filesystem(struct file_system_type * fs)
{
 struct file_system_type ** tmp;

 write_lock(&file_systems_lock);
 tmp = &file_systems;
 while (*tmp) {
  if (fs == *tmp) {
   *tmp = fs->next;
   fs->next = ((void*)0);
   write_unlock(&file_systems_lock);
   return 0;
  }
  tmp = &(*tmp)->next;
 }
 write_unlock(&file_systems_lock);
 return -EINVAL;
}
