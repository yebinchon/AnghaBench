
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * name; } ;
struct autofs_wait_queue {int queue; int wait_ctr; TYPE_1__ name; int status; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {int catatonic; int pipefd; int wq_mutex; int * pipe; struct autofs_wait_queue* queues; } ;


 int DPRINTK (char*) ;
 int ENOENT ;
 int fput (int *) ;
 int kfree (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

void autofs4_catatonic_mode(struct autofs_sb_info *sbi)
{
 struct autofs_wait_queue *wq, *nwq;

 mutex_lock(&sbi->wq_mutex);
 if (sbi->catatonic) {
  mutex_unlock(&sbi->wq_mutex);
  return;
 }

 DPRINTK("entering catatonic mode");

 sbi->catatonic = 1;
 wq = sbi->queues;
 sbi->queues = ((void*)0);
 while (wq) {
  nwq = wq->next;
  wq->status = -ENOENT;
  if (wq->name.name) {
   kfree(wq->name.name);
   wq->name.name = ((void*)0);
  }
  wq->wait_ctr--;
  wake_up_interruptible(&wq->queue);
  wq = nwq;
 }
 fput(sbi->pipe);
 sbi->pipe = ((void*)0);
 sbi->pipefd = -1;
 mutex_unlock(&sbi->wq_mutex);
}
