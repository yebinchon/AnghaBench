
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int KMEMTRACE_TYPE_KMALLOC ;
 int kmemtrace_alloc (int ,unsigned long,void const*,size_t,size_t,int ,int) ;

__attribute__((used)) static void kmemtrace_kmalloc_node(unsigned long call_site,
       const void *ptr,
       size_t bytes_req,
       size_t bytes_alloc,
       gfp_t gfp_flags,
       int node)
{
 kmemtrace_alloc(KMEMTRACE_TYPE_KMALLOC, call_site, ptr,
   bytes_req, bytes_alloc, gfp_flags, node);
}
