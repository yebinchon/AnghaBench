
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t size; int type; } ;
struct perf_event_attr {int dummy; } ;
struct TYPE_4__ {TYPE_1__ header; int id; struct perf_event_attr attr; } ;
union perf_event {TYPE_2__ attr; } ;
typedef int u64 ;
typedef int u32 ;
typedef size_t u16 ;
struct perf_tool {int dummy; } ;
struct perf_event_header {int dummy; } ;
typedef int (* perf_event__handler_t ) (struct perf_tool*,union perf_event*,int *,int *) ;


 int E2BIG ;
 int ENOMEM ;
 size_t PERF_ALIGN (size_t,int) ;
 int PERF_RECORD_HEADER_ATTR ;
 int free (union perf_event*) ;
 union perf_event* malloc (size_t) ;
 int memcpy (int ,int *,int) ;

int perf_event__synthesize_attr(struct perf_tool *tool,
    struct perf_event_attr *attr, u32 ids, u64 *id,
    perf_event__handler_t process)
{
 union perf_event *ev;
 size_t size;
 int err;

 size = sizeof(struct perf_event_attr);
 size = PERF_ALIGN(size, sizeof(u64));
 size += sizeof(struct perf_event_header);
 size += ids * sizeof(u64);

 ev = malloc(size);

 if (ev == ((void*)0))
  return -ENOMEM;

 ev->attr.attr = *attr;
 memcpy(ev->attr.id, id, ids * sizeof(u64));

 ev->attr.header.type = PERF_RECORD_HEADER_ATTR;
 ev->attr.header.size = (u16)size;

 if (ev->attr.header.size == size)
  err = process(tool, ev, ((void*)0), ((void*)0));
 else
  err = -E2BIG;

 free(ev);

 return err;
}
