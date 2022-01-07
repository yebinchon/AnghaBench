
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int total_elements; } ;



__attribute__((used)) static inline int snd_seq_total_cells(struct snd_seq_pool *pool)
{
 return pool ? pool->total_elements : 0;
}
