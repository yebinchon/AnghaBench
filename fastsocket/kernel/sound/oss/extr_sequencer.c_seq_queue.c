
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t EV_SZ ;
 size_t SEQ_MAX_QUEUE ;
 int interruptible_sleep_on (int *) ;
 int memcpy (int *,unsigned char*,size_t) ;
 size_t qlen ;
 size_t qtail ;
 int * queue ;
 int seq_playing ;
 int seq_sleeper ;
 int seq_startplay () ;
 int waitqueue_active (int *) ;

__attribute__((used)) static int seq_queue(unsigned char *note, char nonblock)
{





 if (qlen >= SEQ_MAX_QUEUE)
  if (!seq_playing)
   seq_startplay();



 if (!nonblock && qlen >= SEQ_MAX_QUEUE && !waitqueue_active(&seq_sleeper)) {



  interruptible_sleep_on(&seq_sleeper);
 }
 if (qlen >= SEQ_MAX_QUEUE)
 {
  return 0;


 }
 memcpy(&queue[qtail * EV_SZ], note, EV_SZ);

 qtail = (qtail + 1) % SEQ_MAX_QUEUE;
 qlen++;

 return 1;
}
