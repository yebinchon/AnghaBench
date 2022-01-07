
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int cpu; int idx; int ts; struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_entry {int preempt_count; int flags; int pid; } ;


 int TASK_COMM_LEN ;
 unsigned long TRACE_ITER_VERBOSE ;
 int lat_print_generic (struct trace_seq*,struct trace_entry*,int ) ;
 int lat_print_timestamp (struct trace_iterator*,int ) ;
 int trace_find_cmdline (int ,char*) ;
 struct trace_entry* trace_find_next_entry (struct trace_iterator*,int *,int *) ;
 unsigned long trace_flags ;
 int trace_seq_printf (struct trace_seq*,char*,char*,int ,int ,int ,int ,int ) ;

int trace_print_lat_context(struct trace_iterator *iter)
{
 u64 next_ts;
 int ret;
 struct trace_seq *s = &iter->seq;
 struct trace_entry *entry = iter->ent,
      *next_entry = trace_find_next_entry(iter, ((void*)0),
              &next_ts);
 unsigned long verbose = (trace_flags & TRACE_ITER_VERBOSE);

 if (!next_entry)
  next_ts = iter->ts;

 if (verbose) {
  char comm[TASK_COMM_LEN];

  trace_find_cmdline(entry->pid, comm);

  ret = trace_seq_printf(
    s, "%16s %5d %3d %d %08x %08lx ",
    comm, entry->pid, iter->cpu, entry->flags,
    entry->preempt_count, iter->idx);
 } else {
  ret = lat_print_generic(s, entry, iter->cpu);
 }

 if (ret)
  ret = lat_print_timestamp(iter, next_ts);

 return ret;
}
