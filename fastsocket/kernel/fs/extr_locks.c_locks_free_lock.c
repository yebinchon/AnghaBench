
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int fl_link; int fl_block; int fl_wait; } ;


 int BUG_ON (int) ;
 int filelock_cache ;
 int kmem_cache_free (int ,struct file_lock*) ;
 int list_empty (int *) ;
 int locks_release_private (struct file_lock*) ;
 int waitqueue_active (int *) ;

__attribute__((used)) static void locks_free_lock(struct file_lock *fl)
{
 BUG_ON(waitqueue_active(&fl->fl_wait));
 BUG_ON(!list_empty(&fl->fl_block));
 BUG_ON(!list_empty(&fl->fl_link));

 locks_release_private(fl);
 kmem_cache_free(filelock_cache, fl);
}
