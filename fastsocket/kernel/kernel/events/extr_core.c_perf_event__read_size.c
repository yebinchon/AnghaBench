
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int read_format; } ;
struct perf_event {int read_size; TYPE_1__* group_leader; TYPE_2__ attr; } ;
struct TYPE_3__ {scalar_t__ nr_siblings; } ;


 int PERF_FORMAT_GROUP ;
 int PERF_FORMAT_ID ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;

__attribute__((used)) static void perf_event__read_size(struct perf_event *event)
{
 int entry = sizeof(u64);
 int size = 0;
 int nr = 1;

 if (event->attr.read_format & PERF_FORMAT_TOTAL_TIME_ENABLED)
  size += sizeof(u64);

 if (event->attr.read_format & PERF_FORMAT_TOTAL_TIME_RUNNING)
  size += sizeof(u64);

 if (event->attr.read_format & PERF_FORMAT_ID)
  entry += sizeof(u64);

 if (event->attr.read_format & PERF_FORMAT_GROUP) {
  nr += event->group_leader->nr_siblings;
  size += sizeof(u64);
 }

 size += entry * nr;
 event->read_size = size;
}
