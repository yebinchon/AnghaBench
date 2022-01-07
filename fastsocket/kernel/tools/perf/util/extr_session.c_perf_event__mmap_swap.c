
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filename; void* pgoff; void* len; void* start; void* tid; void* pid; } ;
union perf_event {TYPE_1__ mmap; } ;
typedef int u64 ;


 int PERF_ALIGN (scalar_t__,int) ;
 void* bswap_32 (void*) ;
 void* bswap_64 (void*) ;
 scalar_t__ strlen (void*) ;
 int swap_sample_id_all (union perf_event*,void*) ;

__attribute__((used)) static void perf_event__mmap_swap(union perf_event *event,
      bool sample_id_all)
{
 event->mmap.pid = bswap_32(event->mmap.pid);
 event->mmap.tid = bswap_32(event->mmap.tid);
 event->mmap.start = bswap_64(event->mmap.start);
 event->mmap.len = bswap_64(event->mmap.len);
 event->mmap.pgoff = bswap_64(event->mmap.pgoff);

 if (sample_id_all) {
  void *data = &event->mmap.filename;

  data += PERF_ALIGN(strlen(data) + 1, sizeof(u64));
  swap_sample_id_all(event, data);
 }
}
