
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int size; } ;
union perf_event {TYPE_2__ header; } ;
typedef int u64 ;
struct TYPE_3__ {scalar_t__ needs_swap; } ;
struct perf_session {TYPE_1__ header; } ;


 int perf_event_header__bswap (TYPE_2__*) ;

__attribute__((used)) static union perf_event *
fetch_mmaped_event(struct perf_session *session,
     u64 head, size_t mmap_size, char *buf)
{
 union perf_event *event;





 if (head + sizeof(event->header) > mmap_size)
  return ((void*)0);

 event = (union perf_event *)(buf + head);

 if (session->header.needs_swap)
  perf_event_header__bswap(&event->header);

 if (head + event->header.size > mmap_size)
  return ((void*)0);

 return event;
}
