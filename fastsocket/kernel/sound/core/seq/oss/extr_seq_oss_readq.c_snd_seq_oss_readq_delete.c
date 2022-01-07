
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_oss_readq {struct seq_oss_readq* q; } ;


 int kfree (struct seq_oss_readq*) ;

void
snd_seq_oss_readq_delete(struct seq_oss_readq *q)
{
 if (q) {
  kfree(q->q);
  kfree(q);
 }
}
