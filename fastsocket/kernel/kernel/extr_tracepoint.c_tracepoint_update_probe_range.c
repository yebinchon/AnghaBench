
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_entry {int refcount; } ;
struct tracepoint {int name; } ;


 int disable_tracepoint (struct tracepoint*) ;
 struct tracepoint_entry* get_tracepoint (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_tracepoint (struct tracepoint_entry**,struct tracepoint*,int) ;
 int tracepoints_mutex ;

void
tracepoint_update_probe_range(struct tracepoint *begin, struct tracepoint *end)
{
 struct tracepoint *iter;
 struct tracepoint_entry *mark_entry;

 if (!begin)
  return;

 mutex_lock(&tracepoints_mutex);
 for (iter = begin; iter < end; iter++) {
  mark_entry = get_tracepoint(iter->name);
  if (mark_entry) {
   set_tracepoint(&mark_entry, iter,
     !!mark_entry->refcount);
  } else {
   disable_tracepoint(iter);
  }
 }
 mutex_unlock(&tracepoints_mutex);
}
