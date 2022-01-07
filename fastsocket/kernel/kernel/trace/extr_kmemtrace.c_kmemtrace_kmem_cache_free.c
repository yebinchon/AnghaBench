
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMEMTRACE_TYPE_CACHE ;
 int kmemtrace_free (int ,unsigned long,void const*) ;

__attribute__((used)) static void kmemtrace_kmem_cache_free(unsigned long call_site, const void *ptr)
{
 kmemtrace_free(KMEMTRACE_TYPE_CACHE, call_site, ptr);
}
