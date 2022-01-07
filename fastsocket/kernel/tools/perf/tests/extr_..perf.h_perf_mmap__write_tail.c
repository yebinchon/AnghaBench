
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_mmap {struct perf_event_mmap_page* base; } ;
struct perf_event_mmap_page {unsigned long data_tail; } ;



__attribute__((used)) static inline void perf_mmap__write_tail(struct perf_mmap *md,
      unsigned long tail)
{
 struct perf_event_mmap_page *pc = md->base;





 pc->data_tail = tail;
}
