
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_wait_queue {scalar_t__ wait_queue_token; int status; int queue; int wait_ctr; struct autofs_wait_queue* name; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {struct autofs_wait_queue* queues; } ;
typedef scalar_t__ autofs_wqt_t ;


 int EINVAL ;
 int kfree (struct autofs_wait_queue*) ;
 int wake_up (int *) ;

int autofs_wait_release(struct autofs_sb_info *sbi, autofs_wqt_t wait_queue_token, int status)
{
 struct autofs_wait_queue *wq, **wql;

 for (wql = &sbi->queues; (wq = *wql) != ((void*)0); wql = &wq->next) {
  if ( wq->wait_queue_token == wait_queue_token )
   break;
 }
 if ( !wq )
  return -EINVAL;

 *wql = wq->next;
 kfree(wq->name);
 wq->name = ((void*)0);

 wq->status = status;

 if ( ! --wq->wait_ctr )
  kfree(wq);
 else
  wake_up(&wq->queue);

 return 0;
}
