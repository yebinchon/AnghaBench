
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;


 struct dentry* debugfs_create_dir (char*,struct dentry*) ;
 int pr_warning (char*) ;
 struct dentry* tracing_init_dentry () ;

__attribute__((used)) static struct dentry *event_trace_events_dir(void)
{
 static struct dentry *d_tracer;
 static struct dentry *d_events;

 if (d_events)
  return d_events;

 d_tracer = tracing_init_dentry();
 if (!d_tracer)
  return ((void*)0);

 d_events = debugfs_create_dir("events", d_tracer);
 if (!d_events)
  pr_warning("Could not create debugfs "
      "'events' directory\n");

 return d_events;
}
