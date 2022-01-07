
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmemtrace_kfree ;
 int kmemtrace_kmalloc ;
 int kmemtrace_kmalloc_node ;
 int kmemtrace_kmem_cache_alloc ;
 int kmemtrace_kmem_cache_alloc_node ;
 int kmemtrace_kmem_cache_free ;
 int register_trace_kfree (int ) ;
 int register_trace_kmalloc (int ) ;
 int register_trace_kmalloc_node (int ) ;
 int register_trace_kmem_cache_alloc (int ) ;
 int register_trace_kmem_cache_alloc_node (int ) ;
 int register_trace_kmem_cache_free (int ) ;

__attribute__((used)) static int kmemtrace_start_probes(void)
{
 int err;

 err = register_trace_kmalloc(kmemtrace_kmalloc);
 if (err)
  return err;
 err = register_trace_kmem_cache_alloc(kmemtrace_kmem_cache_alloc);
 if (err)
  return err;
 err = register_trace_kmalloc_node(kmemtrace_kmalloc_node);
 if (err)
  return err;
 err = register_trace_kmem_cache_alloc_node(kmemtrace_kmem_cache_alloc_node);
 if (err)
  return err;
 err = register_trace_kfree(kmemtrace_kfree);
 if (err)
  return err;
 err = register_trace_kmem_cache_free(kmemtrace_kmem_cache_free);

 return err;
}
