
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int __locks_delete_block (struct file_lock*) ;
 int lock_kernel () ;
 int unlock_kernel () ;

__attribute__((used)) static void locks_delete_block(struct file_lock *waiter)
{
 lock_kernel();
 __locks_delete_block(waiter);
 unlock_kernel();
}
