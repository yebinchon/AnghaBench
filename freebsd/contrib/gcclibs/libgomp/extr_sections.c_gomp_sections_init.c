
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gomp_work_share {int chunk_size; unsigned int end; int incr; int next; int sched; } ;


 int GFS_DYNAMIC ;

__attribute__((used)) static inline void
gomp_sections_init (struct gomp_work_share *ws, unsigned count)
{
  ws->sched = GFS_DYNAMIC;
  ws->chunk_size = 1;
  ws->end = count + 1;
  ws->incr = 1;
  ws->next = 1;
}
