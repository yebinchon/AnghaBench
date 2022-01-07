
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int dummy; } ;


 int kfree (struct snd_seq_pool*) ;
 int snd_seq_pool_done (struct snd_seq_pool*) ;

int snd_seq_pool_delete(struct snd_seq_pool **ppool)
{
 struct snd_seq_pool *pool = *ppool;

 *ppool = ((void*)0);
 if (pool == ((void*)0))
  return 0;
 snd_seq_pool_done(pool);
 kfree(pool);
 return 0;
}
