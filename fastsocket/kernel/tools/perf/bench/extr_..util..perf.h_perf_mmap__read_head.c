
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_mmap {struct perf_event_mmap_page* base; } ;
struct perf_event_mmap_page {int data_head; } ;


 int rmb () ;

__attribute__((used)) static inline unsigned int perf_mmap__read_head(struct perf_mmap *mm)
{
 struct perf_event_mmap_page *pc = mm->base;
 int head = pc->data_head;
 rmb();
 return head;
}
