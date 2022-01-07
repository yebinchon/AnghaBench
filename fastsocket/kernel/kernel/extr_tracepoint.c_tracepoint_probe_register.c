
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_probes (void*) ;
 void* tracepoint_add_probe (char const*,void*) ;
 int tracepoint_update_probes () ;
 int tracepoints_mutex ;

int tracepoint_probe_register(const char *name, void *probe)
{
 void *old;

 mutex_lock(&tracepoints_mutex);
 old = tracepoint_add_probe(name, probe);
 mutex_unlock(&tracepoints_mutex);
 if (IS_ERR(old))
  return PTR_ERR(old);

 tracepoint_update_probes();
 release_probes(old);
 return 0;
}
