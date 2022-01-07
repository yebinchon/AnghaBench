
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mid_q_entry {int qhead; int mid_state; int when_received; } ;


 int GlobalMid_Lock ;
 int MID_RESPONSE_MALFORMED ;
 int MID_RESPONSE_RECEIVED ;
 int jiffies ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
dequeue_mid(struct mid_q_entry *mid, bool malformed)
{



 spin_lock(&GlobalMid_Lock);
 if (!malformed)
  mid->mid_state = MID_RESPONSE_RECEIVED;
 else
  mid->mid_state = MID_RESPONSE_MALFORMED;
 list_del_init(&mid->qhead);
 spin_unlock(&GlobalMid_Lock);
}
