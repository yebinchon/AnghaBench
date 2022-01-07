
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {struct file_lock* fl_next; int fl_nspid; int fl_link; } ;


 int current ;
 int file_lock_list ;
 int get_pid (int ) ;
 int list_add (int *,int *) ;
 int task_tgid (int ) ;

__attribute__((used)) static void locks_insert_lock(struct file_lock **pos, struct file_lock *fl)
{
 list_add(&fl->fl_link, &file_lock_list);

 fl->fl_nspid = get_pid(task_tgid(current));


 fl->fl_next = *pos;
 *pos = fl;
}
