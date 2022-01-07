
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tracer {scalar_t__ init; scalar_t__ use_max_tr; int (* reset ) (struct trace_array*) ;int name; struct tracer* next; } ;
struct trace_option_dentry {int dummy; } ;
struct trace_array {int entries; } ;
struct TYPE_2__ {int entries; int buffer; } ;


 int EINVAL ;
 struct trace_option_dentry* create_trace_option_files (struct tracer*) ;
 struct tracer* current_trace ;
 int destroy_trace_option_files (struct trace_option_dentry*) ;
 struct trace_array global_trace ;
 TYPE_1__ max_tr ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ring_buffer_expanded ;
 int ring_buffer_resize (int ,int) ;
 scalar_t__ strcmp (int ,char const*) ;
 int stub1 (struct trace_array*) ;
 int trace_branch_disable () ;
 int trace_branch_enable (struct trace_array*) ;
 int trace_buf_size ;
 struct tracer* trace_types ;
 int trace_types_lock ;
 int tracer_init (struct tracer*,struct trace_array*) ;
 int tracing_resize_ring_buffer (int ) ;

__attribute__((used)) static int tracing_set_tracer(const char *buf)
{
 static struct trace_option_dentry *topts;
 struct trace_array *tr = &global_trace;
 struct tracer *t;
 int ret = 0;

 mutex_lock(&trace_types_lock);

 if (!ring_buffer_expanded) {
  ret = tracing_resize_ring_buffer(trace_buf_size);
  if (ret < 0)
   goto out;
  ret = 0;
 }

 for (t = trace_types; t; t = t->next) {
  if (strcmp(t->name, buf) == 0)
   break;
 }
 if (!t) {
  ret = -EINVAL;
  goto out;
 }
 if (t == current_trace)
  goto out;

 trace_branch_disable();
 if (current_trace && current_trace->reset)
  current_trace->reset(tr);
 if (current_trace && current_trace->use_max_tr) {





  ring_buffer_resize(max_tr.buffer, 1);
  max_tr.entries = 1;
 }
 destroy_trace_option_files(topts);

 current_trace = t;

 topts = create_trace_option_files(current_trace);
 if (current_trace->use_max_tr) {
  ret = ring_buffer_resize(max_tr.buffer, global_trace.entries);
  if (ret < 0)
   goto out;
  max_tr.entries = global_trace.entries;
 }

 if (t->init) {
  ret = tracer_init(t, tr);
  if (ret)
   goto out;
 }

 trace_branch_enable(tr);
 out:
 mutex_unlock(&trace_types_lock);

 return ret;
}
