
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;
struct perf_sample_data {int dummy; } ;


 int PERF_TYPE_SOFTWARE ;
 int do_perf_sw_event (int ,int ,int ,struct perf_sample_data*,struct pt_regs*) ;
 int perf_sample_data_init (struct perf_sample_data*,int ) ;
 int perf_swevent_get_recursion_context () ;
 int perf_swevent_put_recursion_context (int) ;
 int preempt_disable_notrace () ;
 int preempt_enable_notrace () ;

void __perf_sw_event(u32 event_id, u64 nr, struct pt_regs *regs, u64 addr)
{
 struct perf_sample_data data;
 int rctx;

 preempt_disable_notrace();
 rctx = perf_swevent_get_recursion_context();
 if (rctx < 0)
  return;

 perf_sample_data_init(&data, addr);

 do_perf_sw_event(PERF_TYPE_SOFTWARE, event_id, nr, &data, regs);

 perf_swevent_put_recursion_context(rctx);
 preempt_enable_notrace();
}
