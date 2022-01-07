
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int counter; struct snd_seq_event_cell* free; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static inline void free_cell(struct snd_seq_pool *pool,
        struct snd_seq_event_cell *cell)
{
 cell->next = pool->free;
 pool->free = cell;
 atomic_dec(&pool->counter);
}
