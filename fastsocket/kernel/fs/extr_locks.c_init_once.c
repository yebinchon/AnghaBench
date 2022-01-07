
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int locks_init_lock (struct file_lock*) ;

__attribute__((used)) static void init_once(void *foo)
{
 struct file_lock *lock = (struct file_lock *) foo;

 locks_init_lock(lock);
}
