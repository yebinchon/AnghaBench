
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int crypto_thread_lock; int crypto_thread_num; } ;
struct pohmelfs_crypto_thread {int eng; int thread_entry; scalar_t__ thread; struct pohmelfs_sb* psb; } ;


 int kfree (struct pohmelfs_crypto_thread*) ;
 int kthread_stop (scalar_t__) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pohmelfs_crypto_engine_exit (int *) ;
 int pohmelfs_crypto_pages_free (int *) ;

__attribute__((used)) static void pohmelfs_sys_crypto_exit_one(struct pohmelfs_crypto_thread *t)
{
 struct pohmelfs_sb *psb = t->psb;

 if (t->thread)
  kthread_stop(t->thread);

 mutex_lock(&psb->crypto_thread_lock);
 list_del(&t->thread_entry);
 psb->crypto_thread_num--;
 mutex_unlock(&psb->crypto_thread_lock);

 pohmelfs_crypto_engine_exit(&t->eng);
 pohmelfs_crypto_pages_free(&t->eng);
 kfree(t);
}
