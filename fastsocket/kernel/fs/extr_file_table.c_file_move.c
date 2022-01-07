
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_2__ {int fu_list; } ;
struct file {TYPE_1__ f_u; } ;


 int file_list_lock () ;
 int file_list_unlock () ;
 int list_move (int *,struct list_head*) ;

void file_move(struct file *file, struct list_head *list)
{
 if (!list)
  return;
 file_list_lock();
 list_move(&file->f_u.fu_list, list);
 file_list_unlock();
}
