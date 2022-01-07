
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int iter_flags; int ts; int cpu; struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_entry {int pid; } ;


 int TASK_COMM_LEN ;
 int TRACE_FILE_TIME_IN_NS ;
 int USEC_PER_SEC ;
 unsigned long do_div (unsigned long long,int ) ;
 unsigned long long ns2usecs (int ) ;
 int trace_find_cmdline (int ,char*) ;
 int trace_seq_printf (struct trace_seq*,char*,char*,int ,int ,unsigned long,...) ;

int trace_print_context(struct trace_iterator *iter)
{
 struct trace_seq *s = &iter->seq;
 struct trace_entry *entry = iter->ent;
 unsigned long long t;
 unsigned long secs, usec_rem;
 char comm[TASK_COMM_LEN];

 trace_find_cmdline(entry->pid, comm);

 if (iter->iter_flags & TRACE_FILE_TIME_IN_NS) {
  t = ns2usecs(iter->ts);
  usec_rem = do_div(t, USEC_PER_SEC);
  secs = (unsigned long)t;
  return trace_seq_printf(s, "%16s-%-5d [%03d] %5lu.%06lu: ",
     comm, entry->pid, iter->cpu, secs, usec_rem);
 } else
  return trace_seq_printf(s, "%16s-%-5d [%03d] %12llu: ",
     comm, entry->pid, iter->cpu, iter->ts);
}
