
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int nivcsw; int nvcsw; } ;
struct seq_file {int dummy; } ;


 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static inline void task_context_switch_counts(struct seq_file *m,
      struct task_struct *p)
{
 seq_printf(m, "voluntary_ctxt_switches:\t%lu\n"
   "nonvoluntary_ctxt_switches:\t%lu\n",
   p->nvcsw,
   p->nivcsw);
}
