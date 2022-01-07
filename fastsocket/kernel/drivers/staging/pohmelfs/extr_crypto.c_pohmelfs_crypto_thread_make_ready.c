
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_sb {int wait; int crypto_thread_lock; int crypto_ready_list; } ;
struct pohmelfs_crypto_thread {int thread_entry; int * trans; int * page; struct pohmelfs_sb* psb; } ;


 int list_move_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up (int *) ;

void pohmelfs_crypto_thread_make_ready(struct pohmelfs_crypto_thread *th)
{
 struct pohmelfs_sb *psb = th->psb;

 th->page = ((void*)0);
 th->trans = ((void*)0);

 mutex_lock(&psb->crypto_thread_lock);
 list_move_tail(&th->thread_entry, &psb->crypto_ready_list);
 mutex_unlock(&psb->crypto_thread_lock);
 wake_up(&psb->wait);
}
