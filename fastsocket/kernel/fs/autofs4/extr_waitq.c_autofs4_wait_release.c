
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct autofs_wait_queue* name; } ;
struct autofs_wait_queue {scalar_t__ wait_queue_token; int status; int wait_ctr; int queue; TYPE_1__ name; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {int wq_mutex; struct autofs_wait_queue* queues; } ;
typedef scalar_t__ autofs_wqt_t ;


 int EINVAL ;
 int kfree (struct autofs_wait_queue*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

int autofs4_wait_release(struct autofs_sb_info *sbi, autofs_wqt_t wait_queue_token, int status)
{
 struct autofs_wait_queue *wq, **wql;

 mutex_lock(&sbi->wq_mutex);
 for (wql = &sbi->queues; (wq = *wql) != ((void*)0); wql = &wq->next) {
  if (wq->wait_queue_token == wait_queue_token)
   break;
 }

 if (!wq) {
  mutex_unlock(&sbi->wq_mutex);
  return -EINVAL;
 }

 *wql = wq->next;
 kfree(wq->name.name);
 wq->name.name = ((void*)0);
 wq->status = status;
 wake_up_interruptible(&wq->queue);
 if (!--wq->wait_ctr)
  kfree(wq);
 mutex_unlock(&sbi->wq_mutex);

 return 0;
}
