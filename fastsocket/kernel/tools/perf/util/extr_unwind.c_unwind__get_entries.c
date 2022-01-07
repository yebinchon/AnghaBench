
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unwind_entry_cb_t ;
typedef int unw_word_t ;
typedef int u64 ;
struct unwind_info {struct machine* machine; struct thread* thread; int sample_uregs; struct perf_sample* sample; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int regs; } ;
struct perf_sample {TYPE_1__ user_regs; } ;
struct machine {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int PERF_REG_IP ;
 int entry (int ,struct thread*,struct machine*,int ,void*) ;
 int get_entries (struct unwind_info*,int ,void*) ;
 int reg_value (int *,TYPE_1__*,int ,int ) ;

int unwind__get_entries(unwind_entry_cb_t cb, void *arg,
   struct machine *machine, struct thread *thread,
   u64 sample_uregs, struct perf_sample *data)
{
 unw_word_t ip;
 struct unwind_info ui = {
  .sample = data,
  .sample_uregs = sample_uregs,
  .thread = thread,
  .machine = machine,
 };
 int ret;

 if (!data->user_regs.regs)
  return -EINVAL;

 ret = reg_value(&ip, &data->user_regs, PERF_REG_IP, sample_uregs);
 if (ret)
  return ret;

 ret = entry(ip, thread, machine, cb, arg);
 if (ret)
  return -ENOMEM;

 return get_entries(&ui, cb, arg);
}
