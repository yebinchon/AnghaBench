
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_writeq {int dummy; } ;


 int kfree (struct seq_oss_writeq*) ;
 int snd_seq_oss_writeq_clear (struct seq_oss_writeq*) ;

void
snd_seq_oss_writeq_delete(struct seq_oss_writeq *q)
{
 if (q) {
  snd_seq_oss_writeq_clear(q);
  kfree(q);
 }
}
