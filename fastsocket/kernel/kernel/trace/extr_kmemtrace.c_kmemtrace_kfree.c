
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KMEMTRACE_TYPE_KMALLOC ;
 int kmemtrace_free (int ,unsigned long,void const*) ;

__attribute__((used)) static void kmemtrace_kfree(unsigned long call_site, const void *ptr)
{
 kmemtrace_free(KMEMTRACE_TYPE_KMALLOC, call_site, ptr);
}
