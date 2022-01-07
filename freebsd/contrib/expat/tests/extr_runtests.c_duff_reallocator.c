
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ REALLOC_ALWAYS_SUCCEED ;
 void* realloc (void*,size_t) ;
 scalar_t__ reallocation_count ;

__attribute__((used)) static void *duff_reallocator(void *ptr, size_t size)
{
    if (reallocation_count == 0)
        return ((void*)0);
    if (reallocation_count != REALLOC_ALWAYS_SUCCEED)
        reallocation_count--;
    return realloc(ptr, size);
}
