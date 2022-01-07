
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;
struct perf_output_handle {int dummy; } ;
struct perf_event_header {int size; } ;
struct perf_event {int dummy; } ;


 scalar_t__ perf_output_begin (struct perf_output_handle*,struct perf_event*,int ) ;
 int perf_output_end (struct perf_output_handle*) ;
 int perf_output_sample (struct perf_output_handle*,struct perf_event_header*,struct perf_sample_data*,struct perf_event*) ;
 int perf_prepare_sample (struct perf_event_header*,struct perf_sample_data*,struct perf_event*,struct pt_regs*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static void perf_event_output(struct perf_event *event,
    struct perf_sample_data *data,
    struct pt_regs *regs)
{
 struct perf_output_handle handle;
 struct perf_event_header header;


 rcu_read_lock();

 perf_prepare_sample(&header, data, event, regs);

 if (perf_output_begin(&handle, event, header.size))
  goto exit;

 perf_output_sample(&handle, &header, data, event);

 perf_output_end(&handle);

exit:
 rcu_read_unlock();
}
