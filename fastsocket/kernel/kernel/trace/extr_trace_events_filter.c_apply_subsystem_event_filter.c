
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_parse_state {int dummy; } ;
struct event_subsystem {int filter; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int append_filter_err (struct filter_parse_state*,int ) ;
 int event_mutex ;
 int filter_free_subsystem_preds (struct event_subsystem*) ;
 int filter_ops ;
 int filter_opstack_clear (struct filter_parse_state*) ;
 int filter_parse (struct filter_parse_state*) ;
 int init_subsystem_preds (struct event_subsystem*) ;
 int kfree (struct filter_parse_state*) ;
 struct filter_parse_state* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parse_init (struct filter_parse_state*,int ,char*) ;
 int postfix_clear (struct filter_parse_state*) ;
 int remove_filter_string (int ) ;
 int replace_filter_string (int ,char*) ;
 int replace_system_preds (struct event_subsystem*,struct filter_parse_state*,char*) ;
 int strcmp (int ,char*) ;
 int strstrip (char*) ;

int apply_subsystem_event_filter(struct event_subsystem *system,
     char *filter_string)
{
 int err;
 struct filter_parse_state *ps;

 mutex_lock(&event_mutex);

 err = init_subsystem_preds(system);
 if (err)
  goto out_unlock;

 if (!strcmp(strstrip(filter_string), "0")) {
  filter_free_subsystem_preds(system);
  remove_filter_string(system->filter);
  goto out_unlock;
 }

 err = -ENOMEM;
 ps = kzalloc(sizeof(*ps), GFP_KERNEL);
 if (!ps)
  goto out_unlock;

 replace_filter_string(system->filter, filter_string);

 parse_init(ps, filter_ops, filter_string);
 err = filter_parse(ps);
 if (err) {
  append_filter_err(ps, system->filter);
  goto out;
 }

 err = replace_system_preds(system, ps, filter_string);
 if (err)
  append_filter_err(ps, system->filter);

out:
 filter_opstack_clear(ps);
 postfix_clear(ps);
 kfree(ps);
out_unlock:
 mutex_unlock(&event_mutex);

 return err;
}
