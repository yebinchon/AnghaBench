
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_client_pool {int output_room; int client; } ;
struct seq_oss_writeq {TYPE_1__* dp; } ;
struct TYPE_2__ {int cseq; } ;


 int SNDRV_SEQ_IOCTL_GET_CLIENT_POOL ;
 int SNDRV_SEQ_IOCTL_SET_CLIENT_POOL ;
 int snd_seq_oss_control (TYPE_1__*,int ,struct snd_seq_client_pool*) ;

void
snd_seq_oss_writeq_set_output(struct seq_oss_writeq *q, int val)
{
 struct snd_seq_client_pool pool;
 pool.client = q->dp->cseq;
 snd_seq_oss_control(q->dp, SNDRV_SEQ_IOCTL_GET_CLIENT_POOL, &pool);
 pool.output_room = val;
 snd_seq_oss_control(q->dp, SNDRV_SEQ_IOCTL_SET_CLIENT_POOL, &pool);
}
