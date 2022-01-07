
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_cached_dealloc_ctxt {int * c_global_allocator; int * c_first_suballocator; } ;



__attribute__((used)) static inline void ocfs2_init_dealloc_ctxt(struct ocfs2_cached_dealloc_ctxt *c)
{
 c->c_first_suballocator = ((void*)0);
 c->c_global_allocator = ((void*)0);
}
