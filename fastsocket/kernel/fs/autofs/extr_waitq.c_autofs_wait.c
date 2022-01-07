
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {scalar_t__ len; scalar_t__ hash; int name; } ;
struct autofs_wait_queue {scalar_t__ hash; scalar_t__ len; int status; int wait_ctr; int queue; struct autofs_wait_queue* name; struct autofs_wait_queue* next; scalar_t__ wait_queue_token; } ;
struct autofs_sb_info {scalar_t__ catatonic; struct autofs_wait_queue* queues; } ;
typedef int sigset_t ;


 int DPRINTK (char*) ;
 int EINTR ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ NAME_MAX ;
 int SHUTDOWN_SIGS ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int autofs_next_wait_queue ;
 int autofs_notify_daemon (struct autofs_sb_info*,struct autofs_wait_queue*) ;
 int init_waitqueue_head (int *) ;
 int interruptible_sleep_on (int *) ;
 int kfree (struct autofs_wait_queue*) ;
 void* kmalloc (int,int ) ;
 int memcmp (struct autofs_wait_queue*,int ,scalar_t__) ;
 int memcpy (struct autofs_wait_queue*,int ,int) ;
 int siginitsetinv (int *,int ) ;
 int sigprocmask (int ,int *,int *) ;

int autofs_wait(struct autofs_sb_info *sbi, struct qstr *name)
{
 struct autofs_wait_queue *wq;
 int status;


 if ( sbi->catatonic )
  return -ENOENT;


 if ( name->len > NAME_MAX )
  return -ENOENT;

 for ( wq = sbi->queues ; wq ; wq = wq->next ) {
  if ( wq->hash == name->hash &&
       wq->len == name->len &&
       wq->name && !memcmp(wq->name,name->name,name->len) )
   break;
 }

 if ( !wq ) {

  wq = kmalloc(sizeof(struct autofs_wait_queue),GFP_KERNEL);
  if ( !wq )
   return -ENOMEM;

  wq->name = kmalloc(name->len,GFP_KERNEL);
  if ( !wq->name ) {
   kfree(wq);
   return -ENOMEM;
  }
  wq->wait_queue_token = autofs_next_wait_queue++;
  init_waitqueue_head(&wq->queue);
  wq->hash = name->hash;
  wq->len = name->len;
  wq->status = -EINTR;
  memcpy(wq->name, name->name, name->len);
  wq->next = sbi->queues;
  sbi->queues = wq;


  wq->wait_ctr = 2;
  autofs_notify_daemon(sbi,wq);
 } else
  wq->wait_ctr++;



 if ( sbi->catatonic ) {

  wq->status = -ENOENT;
  kfree(wq->name);
  wq->name = ((void*)0);
 }

 if ( wq->name ) {

  sigset_t sigmask;

  siginitsetinv(&sigmask, SHUTDOWN_SIGS);
  sigprocmask(SIG_BLOCK, &sigmask, &sigmask);

  interruptible_sleep_on(&wq->queue);

  sigprocmask(SIG_SETMASK, &sigmask, ((void*)0));
 } else {
  DPRINTK(("autofs_wait: skipped sleeping\n"));
 }

 status = wq->status;

 if ( ! --wq->wait_ctr )
  kfree(wq);

 return status;
}
