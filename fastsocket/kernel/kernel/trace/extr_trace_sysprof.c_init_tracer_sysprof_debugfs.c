
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 int sysprof_sample_fops ;
 int trace_create_file (char*,int,struct dentry*,int *,int *) ;

void init_tracer_sysprof_debugfs(struct dentry *d_tracer)
{

 trace_create_file("sysprof_sample_period", 0644,
   d_tracer, ((void*)0), &sysprof_sample_fops);
}
