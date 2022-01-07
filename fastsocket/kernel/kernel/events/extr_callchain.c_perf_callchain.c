
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct perf_callchain_entry {scalar_t__ nr; } ;
struct TYPE_3__ {scalar_t__ mm; } ;


 int PERF_CONTEXT_KERNEL ;
 int PERF_CONTEXT_USER ;
 TYPE_1__* current ;
 struct perf_callchain_entry* get_callchain_entry (int*) ;
 int perf_callchain_kernel (struct perf_callchain_entry*,struct pt_regs*) ;
 int perf_callchain_store (struct perf_callchain_entry*,int ) ;
 int perf_callchain_user (struct perf_callchain_entry*,struct pt_regs*) ;
 int put_callchain_entry (int) ;
 struct pt_regs* task_pt_regs (TYPE_1__*) ;
 int user_mode (struct pt_regs*) ;

struct perf_callchain_entry *perf_callchain(struct pt_regs *regs)
{
 int rctx;
 struct perf_callchain_entry *entry;


 entry = get_callchain_entry(&rctx);
 if (rctx == -1)
  return ((void*)0);

 if (!entry)
  goto exit_put;

 entry->nr = 0;

 if (!user_mode(regs)) {
  perf_callchain_store(entry, PERF_CONTEXT_KERNEL);
  perf_callchain_kernel(entry, regs);
  if (current->mm)
   regs = task_pt_regs(current);
  else
   regs = ((void*)0);
 }

 if (regs) {
  perf_callchain_store(entry, PERF_CONTEXT_USER);
  perf_callchain_user(entry, regs);
 }

exit_put:
 put_callchain_entry(rctx);

 return entry;
}
