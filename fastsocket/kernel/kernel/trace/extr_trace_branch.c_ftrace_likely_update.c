
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_branch_data {int incorrect; int correct; } ;


 int trace_likely_condition (struct ftrace_branch_data*,int,int) ;

void ftrace_likely_update(struct ftrace_branch_data *f, int val, int expect)
{






 trace_likely_condition(f, val, expect);


 if (val == expect)
  f->correct++;
 else
  f->incorrect++;
}
