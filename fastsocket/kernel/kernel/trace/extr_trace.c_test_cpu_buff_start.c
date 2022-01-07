
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct trace_seq {int dummy; } ;
struct trace_iterator {int iter_flags; size_t cpu; int idx; int started; TYPE_1__* tr; struct trace_seq seq; } ;
struct TYPE_4__ {scalar_t__ skipped_entries; } ;
struct TYPE_3__ {TYPE_2__** data; } ;


 int TRACE_FILE_ANNOTATE ;
 int TRACE_ITER_ANNOTATE ;
 int cpumask_set_cpu (size_t,int ) ;
 scalar_t__ cpumask_test_cpu (size_t,int ) ;
 int trace_flags ;
 int trace_seq_printf (struct trace_seq*,char*,size_t) ;

__attribute__((used)) static void test_cpu_buff_start(struct trace_iterator *iter)
{
 struct trace_seq *s = &iter->seq;

 if (!(trace_flags & TRACE_ITER_ANNOTATE))
  return;

 if (!(iter->iter_flags & TRACE_FILE_ANNOTATE))
  return;

 if (cpumask_test_cpu(iter->cpu, iter->started))
  return;

 if (iter->tr->data[iter->cpu]->skipped_entries)
  return;

 cpumask_set_cpu(iter->cpu, iter->started);


 if (iter->idx > 1)
  trace_seq_printf(s, "##### CPU %u buffer started ####\n",
    iter->cpu);
}
