
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Block_byref_header {int dummy; } ;
struct Block_byref {int flags; struct Block_byref* forwarding; scalar_t__ size; int (* byref_keep ) (struct Block_byref*,struct Block_byref*) ;int byref_destroy; int * isa; } ;


 int const BLOCK_FIELD_IS_BYREF ;
 int const BLOCK_FIELD_IS_WEAK ;
 int BLOCK_HAS_COPY_DISPOSE ;
 int BLOCK_IS_GC ;
 int BLOCK_NEEDS_FREE ;
 int BLOCK_REFCOUNT_MASK ;
 scalar_t__ _Block_allocator (scalar_t__,int,int) ;
 int _Block_assign (struct Block_byref*,void**) ;
 int _Block_memmove (void*,void*,scalar_t__) ;
 int _Byref_flag_initial_value ;
 int _NSConcreteWeakBlockVariable ;
 int latching_incr_int (int*) ;
 int stub1 (struct Block_byref*,struct Block_byref*) ;

__attribute__((used)) static void _Block_byref_assign_copy(void *dest, const void *arg, const int flags) {
    struct Block_byref **destp = (struct Block_byref **)dest;
    struct Block_byref *src = (struct Block_byref *)arg;



    if (src->forwarding->flags & BLOCK_IS_GC) {
        ;
    }
    else if ((src->forwarding->flags & BLOCK_REFCOUNT_MASK) == 0) {


        bool isWeak = ((flags & (BLOCK_FIELD_IS_BYREF|BLOCK_FIELD_IS_WEAK)) == (BLOCK_FIELD_IS_BYREF|BLOCK_FIELD_IS_WEAK));

        struct Block_byref *copy = (struct Block_byref *)_Block_allocator(src->size, 0, isWeak);
        copy->flags = src->flags | _Byref_flag_initial_value;
        copy->forwarding = copy;
        src->forwarding = copy;
        copy->size = src->size;
        if (isWeak) {
            copy->isa = &_NSConcreteWeakBlockVariable;
        }
        if (src->flags & BLOCK_HAS_COPY_DISPOSE) {


            copy->byref_keep = src->byref_keep;
            copy->byref_destroy = src->byref_destroy;
            (*src->byref_keep)(copy, src);
        }
        else {

            _Block_memmove(
                (void *)&copy->byref_keep,
                (void *)&src->byref_keep,
                src->size - sizeof(struct Block_byref_header));
        }
    }

    else if ((src->forwarding->flags & BLOCK_NEEDS_FREE) == BLOCK_NEEDS_FREE) {
        latching_incr_int(&src->forwarding->flags);
    }

    _Block_assign(src->forwarding, (void **)destp);
}
