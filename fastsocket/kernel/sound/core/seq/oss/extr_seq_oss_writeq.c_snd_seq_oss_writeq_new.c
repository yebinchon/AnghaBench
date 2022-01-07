
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_client_pool {int output_pool; int output_room; int client; } ;
struct seq_oss_writeq {int maxlen; int sync_sleep; scalar_t__ sync_time; scalar_t__ sync_event_put; int sync_lock; struct seq_oss_devinfo* dp; } ;
struct seq_oss_devinfo {int cseq; } ;
typedef int pool ;


 int GFP_KERNEL ;
 int SNDRV_SEQ_IOCTL_SET_CLIENT_POOL ;
 int init_waitqueue_head (int *) ;
 struct seq_oss_writeq* kzalloc (int,int ) ;
 int memset (struct snd_seq_client_pool*,int ,int) ;
 int snd_seq_oss_control (struct seq_oss_devinfo*,int ,struct snd_seq_client_pool*) ;
 int spin_lock_init (int *) ;

struct seq_oss_writeq *
snd_seq_oss_writeq_new(struct seq_oss_devinfo *dp, int maxlen)
{
 struct seq_oss_writeq *q;
 struct snd_seq_client_pool pool;

 if ((q = kzalloc(sizeof(*q), GFP_KERNEL)) == ((void*)0))
  return ((void*)0);
 q->dp = dp;
 q->maxlen = maxlen;
 spin_lock_init(&q->sync_lock);
 q->sync_event_put = 0;
 q->sync_time = 0;
 init_waitqueue_head(&q->sync_sleep);

 memset(&pool, 0, sizeof(pool));
 pool.client = dp->cseq;
 pool.output_pool = maxlen;
 pool.output_room = maxlen / 2;

 snd_seq_oss_control(dp, SNDRV_SEQ_IOCTL_SET_CLIENT_POOL, &pool);

 return q;
}
