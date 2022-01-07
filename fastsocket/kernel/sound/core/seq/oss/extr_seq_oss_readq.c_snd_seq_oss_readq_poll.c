
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_readq {unsigned int qlen; int midi_sleep; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 int poll_wait (struct file*,int *,int *) ;

unsigned int
snd_seq_oss_readq_poll(struct seq_oss_readq *q, struct file *file, poll_table *wait)
{
 poll_wait(file, &q->midi_sleep, wait);
 return q->qlen;
}
