
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {TYPE_2__ header; int tid; int pid; } ;
struct perf_mmap_event {TYPE_1__ event_id; int file_size; int file_name; } ;
struct perf_event {int dummy; } ;


 int __output_copy (struct perf_output_handle*,int ,int ) ;
 int current ;
 int perf_event__output_id_sample (struct perf_event*,struct perf_output_handle*,struct perf_sample_data*) ;
 int perf_event_header__init_id (TYPE_2__*,struct perf_sample_data*,struct perf_event*) ;
 int perf_event_pid (struct perf_event*,int ) ;
 int perf_event_tid (struct perf_event*,int ) ;
 int perf_output_begin (struct perf_output_handle*,struct perf_event*,int) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_put (struct perf_output_handle*,TYPE_1__) ;

__attribute__((used)) static void perf_event_mmap_output(struct perf_event *event,
         struct perf_mmap_event *mmap_event)
{
 struct perf_output_handle handle;
 struct perf_sample_data sample;
 int size = mmap_event->event_id.header.size;
 int ret;

 perf_event_header__init_id(&mmap_event->event_id.header, &sample, event);
 ret = perf_output_begin(&handle, event,
    mmap_event->event_id.header.size);
 if (ret)
  goto out;

 mmap_event->event_id.pid = perf_event_pid(event, current);
 mmap_event->event_id.tid = perf_event_tid(event, current);

 perf_output_put(&handle, mmap_event->event_id);
 __output_copy(&handle, mmap_event->file_name,
       mmap_event->file_size);

 perf_event__output_id_sample(event, &handle, &sample);

 perf_output_end(&handle);
out:
 mmap_event->event_id.header.size = size;
}
