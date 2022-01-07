
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
 int unregister_trace_kfree (int ) ;
 int unregister_trace_kmalloc (int ) ;
 int unregister_trace_kmalloc_node (int ) ;
 int unregister_trace_kmem_cache_alloc (int ) ;
 int unregister_trace_kmem_cache_alloc_node (int ) ;
 int unregister_trace_kmem_cache_free (int ) ;

__attribute__((used)) static void kmemtrace_stop_probes(void)
{
 unregister_trace_kmalloc(kmemtrace_kmalloc);
 unregister_trace_kmem_cache_alloc(kmemtrace_kmem_cache_alloc);
 unregister_trace_kmalloc_node(kmemtrace_kmalloc_node);
 unregister_trace_kmem_cache_alloc_node(kmemtrace_kmem_cache_alloc_node);
 unregister_trace_kfree(kmemtrace_kfree);
 unregister_trace_kmem_cache_free(kmemtrace_kmem_cache_free);
}
