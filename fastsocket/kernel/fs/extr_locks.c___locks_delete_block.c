
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int * fl_next; int fl_link; int fl_block; } ;


 int list_del_init (int *) ;

__attribute__((used)) static void __locks_delete_block(struct file_lock *waiter)
{
 list_del_init(&waiter->fl_block);
 list_del_init(&waiter->fl_link);
 waiter->fl_next = ((void*)0);
}
