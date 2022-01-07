
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gomp_work_share {int sched; long chunk_size; long end; long incr; long next; } ;
typedef enum gomp_schedule_type { ____Placeholder_gomp_schedule_type } gomp_schedule_type ;



__attribute__((used)) static inline void
gomp_loop_init (struct gomp_work_share *ws, long start, long end, long incr,
  enum gomp_schedule_type sched, long chunk_size)
{
  ws->sched = sched;
  ws->chunk_size = chunk_size;

  ws->end = ((incr > 0 && start > end) || (incr < 0 && start < end))
     ? start : end;
  ws->incr = incr;
  ws->next = start;
}
