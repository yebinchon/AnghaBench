
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_entry {int pid; } ;


 int TASK_COMM_LEN ;
 int trace_find_cmdline (int ,char*) ;
 int trace_print_lat_fmt (struct trace_seq*,struct trace_entry*) ;
 int trace_seq_printf (struct trace_seq*,char*,char*,int ,int) ;

__attribute__((used)) static int
lat_print_generic(struct trace_seq *s, struct trace_entry *entry, int cpu)
{
 char comm[TASK_COMM_LEN];

 trace_find_cmdline(entry->pid, comm);

 if (!trace_seq_printf(s, "%8.8s-%-5d %3d",
         comm, entry->pid, cpu))
  return 0;

 return trace_print_lat_fmt(s, entry);
}
