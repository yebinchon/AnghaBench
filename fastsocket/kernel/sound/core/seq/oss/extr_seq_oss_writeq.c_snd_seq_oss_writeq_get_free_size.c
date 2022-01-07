
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_client_pool {int output_free; int client; } ;
struct seq_oss_writeq {TYPE_1__* dp; } ;
struct TYPE_2__ {int cseq; } ;


 int SNDRV_SEQ_IOCTL_GET_CLIENT_POOL ;
 int snd_seq_oss_control (TYPE_1__*,int ,struct snd_seq_client_pool*) ;

int
snd_seq_oss_writeq_get_free_size(struct seq_oss_writeq *q)
{
 struct snd_seq_client_pool pool;
 pool.client = q->dp->cseq;
 snd_seq_oss_control(q->dp, SNDRV_SEQ_IOCTL_GET_CLIENT_POOL, &pool);
 return pool.output_free;
}
