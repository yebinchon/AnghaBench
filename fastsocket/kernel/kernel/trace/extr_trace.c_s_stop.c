
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int atomic_dec (int *) ;
 int trace_event_read_unlock () ;
 int trace_record_cmdline_disabled ;

__attribute__((used)) static void s_stop(struct seq_file *m, void *p)
{
 atomic_dec(&trace_record_cmdline_disabled);
 trace_event_read_unlock();
}
