
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_link; struct file_lock* fl_next; int fl_block; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_POSIX (struct file_lock*) ;
 int blocked_list ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;

__attribute__((used)) static void locks_insert_block(struct file_lock *blocker,
          struct file_lock *waiter)
{
 BUG_ON(!list_empty(&waiter->fl_block));
 list_add_tail(&waiter->fl_block, &blocker->fl_block);
 waiter->fl_next = blocker;
 if (IS_POSIX(blocker))
  list_add(&waiter->fl_link, &blocked_list);
}
