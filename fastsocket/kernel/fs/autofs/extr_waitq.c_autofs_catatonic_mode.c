
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct autofs_wait_queue {int queue; int * name; int status; struct autofs_wait_queue* next; } ;
struct autofs_sb_info {int catatonic; int dirhash; int * pipe; struct autofs_wait_queue* queues; } ;


 int DPRINTK (char*) ;
 int ENOENT ;
 int autofs_hash_dputall (int *) ;
 int fput (int *) ;
 int kfree (int *) ;
 int wake_up (int *) ;

void autofs_catatonic_mode(struct autofs_sb_info *sbi)
{
 struct autofs_wait_queue *wq, *nwq;

 DPRINTK(("autofs: entering catatonic mode\n"));

 sbi->catatonic = 1;
 wq = sbi->queues;
 sbi->queues = ((void*)0);
 while ( wq ) {
  nwq = wq->next;
  wq->status = -ENOENT;
  kfree(wq->name);
  wq->name = ((void*)0);
  wake_up(&wq->queue);
  wq = nwq;
 }
 fput(sbi->pipe);
 sbi->pipe = ((void*)0);
 autofs_hash_dputall(&sbi->dirhash);
}
