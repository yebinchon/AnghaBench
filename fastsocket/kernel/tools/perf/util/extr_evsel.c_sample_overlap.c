
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;
typedef int u64 ;



__attribute__((used)) static bool sample_overlap(const union perf_event *event,
      const void *offset, u64 size)
{
 const void *base = event;

 if (offset + size > base + event->header.size)
  return 1;

 return 0;
}
