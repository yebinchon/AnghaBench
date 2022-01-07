
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _Block_assign_default (void*,void**) ;

__attribute__((used)) static void _Block_memmove_gc_broken(void *dest, void *src, unsigned long size) {
    void **destp = (void **)dest;
    void **srcp = (void **)src;
    while (size) {
        _Block_assign_default(*srcp, destp);
        destp++;
        srcp++;
        size -= sizeof(void *);
    }
}
