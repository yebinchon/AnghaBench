
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {scalar_t__ room; } ;


 scalar_t__ snd_seq_pool_available (struct snd_seq_pool*) ;

__attribute__((used)) static inline int snd_seq_output_ok(struct snd_seq_pool *pool)
{
 return snd_seq_pool_available(pool) >= pool->room;
}
