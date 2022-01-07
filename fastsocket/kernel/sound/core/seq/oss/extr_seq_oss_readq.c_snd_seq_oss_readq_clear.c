
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_readq {unsigned long input_time; int midi_sleep; scalar_t__ tail; scalar_t__ head; scalar_t__ qlen; } ;


 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void
snd_seq_oss_readq_clear(struct seq_oss_readq *q)
{
 if (q->qlen) {
  q->qlen = 0;
  q->head = q->tail = 0;
 }

 if (waitqueue_active(&q->midi_sleep))
  wake_up(&q->midi_sleep);
 q->input_time = (unsigned long)-1;
}
