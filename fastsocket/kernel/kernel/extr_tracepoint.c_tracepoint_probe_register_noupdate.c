
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tracepoint_add_old_probes (void*) ;
 void* tracepoint_add_probe (char const*,void*) ;
 int tracepoints_mutex ;

int tracepoint_probe_register_noupdate(const char *name, void *probe)
{
 void *old;

 mutex_lock(&tracepoints_mutex);
 old = tracepoint_add_probe(name, probe);
 if (IS_ERR(old)) {
  mutex_unlock(&tracepoints_mutex);
  return PTR_ERR(old);
 }
 tracepoint_add_old_probes(old);
 mutex_unlock(&tracepoints_mutex);
 return 0;
}
