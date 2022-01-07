
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _Block_memmove_gc_broken ;
 int _Block_use_GC (void* (*) (unsigned long const,int const,int const),void (*) (void const*,int const),void (*) (void*,void**),void (*) (void const*,void*),int ) ;

void _Block_use_GC5( void *(*alloc)(const unsigned long, const bool isOne, const bool isObject),
                    void (*setHasRefcount)(const void *, const bool),
                    void (*gc_assign)(void *, void **),
                    void (*gc_assign_weak)(const void *, void *)) {

    _Block_use_GC(alloc, setHasRefcount, gc_assign, gc_assign_weak, _Block_memmove_gc_broken);
}
