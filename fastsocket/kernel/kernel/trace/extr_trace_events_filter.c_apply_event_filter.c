
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int flags; int filter; } ;
struct filter_parse_state {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int TRACE_EVENT_FL_FILTERED ;
 int append_filter_err (struct filter_parse_state*,int ) ;
 int event_mutex ;
 int filter_disable_preds (struct ftrace_event_call*) ;
 int filter_ops ;
 int filter_opstack_clear (struct filter_parse_state*) ;
 int filter_parse (struct filter_parse_state*) ;
 int init_preds (struct ftrace_event_call*) ;
 int kfree (struct filter_parse_state*) ;
 struct filter_parse_state* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parse_init (struct filter_parse_state*,int ,char*) ;
 int postfix_clear (struct filter_parse_state*) ;
 int remove_filter_string (int ) ;
 int replace_filter_string (int ,char*) ;
 int replace_preds (struct ftrace_event_call*,int ,struct filter_parse_state*,char*,int) ;
 int strcmp (int ,char*) ;
 int strstrip (char*) ;

int apply_event_filter(struct ftrace_event_call *call, char *filter_string)
{
 int err;
 struct filter_parse_state *ps;

 mutex_lock(&event_mutex);

 err = init_preds(call);
 if (err)
  goto out_unlock;

 if (!strcmp(strstrip(filter_string), "0")) {
  filter_disable_preds(call);
  remove_filter_string(call->filter);
  goto out_unlock;
 }

 err = -ENOMEM;
 ps = kzalloc(sizeof(*ps), GFP_KERNEL);
 if (!ps)
  goto out_unlock;

 filter_disable_preds(call);
 replace_filter_string(call->filter, filter_string);

 parse_init(ps, filter_ops, filter_string);
 err = filter_parse(ps);
 if (err) {
  append_filter_err(ps, call->filter);
  goto out;
 }

 err = replace_preds(call, call->filter, ps, filter_string, 0);
 if (err)
  append_filter_err(ps, call->filter);
 else
  call->flags |= TRACE_EVENT_FL_FILTERED;
out:
 filter_opstack_clear(ps);
 postfix_clear(ps);
 kfree(ps);
out_unlock:
 mutex_unlock(&event_mutex);

 return err;
}
