
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void tracer ;
struct seq_file {int dummy; } ;
typedef scalar_t__ loff_t ;


 int mutex_lock (int *) ;
 void* t_next (struct seq_file*,void*,scalar_t__*) ;
 void* trace_types ;
 int trace_types_lock ;

__attribute__((used)) static void *t_start(struct seq_file *m, loff_t *pos)
{
 struct tracer *t;
 loff_t l = 0;

 mutex_lock(&trace_types_lock);
 for (t = trace_types; t && l < *pos; t = t_next(m, t, &l))
  ;

 return t;
}
