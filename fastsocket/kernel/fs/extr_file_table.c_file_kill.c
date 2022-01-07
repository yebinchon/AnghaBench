
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fu_list; } ;
struct file {TYPE_1__ f_u; } ;


 int file_list_lock () ;
 int file_list_unlock () ;
 int list_del_init (int *) ;
 int list_empty (int *) ;

void file_kill(struct file *file)
{
 if (!list_empty(&file->f_u.fu_list)) {
  file_list_lock();
  list_del_init(&file->f_u.fu_list);
  file_list_unlock();
 }
}
