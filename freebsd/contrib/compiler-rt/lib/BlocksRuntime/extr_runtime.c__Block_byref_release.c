
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Block_layout {int dummy; } ;
struct Block_byref {int flags; int (* byref_destroy ) (struct Block_byref*) ;struct Block_byref* forwarding; } ;


 int BLOCK_HAS_COPY_DISPOSE ;
 int BLOCK_NEEDS_FREE ;
 int BLOCK_REFCOUNT_MASK ;
 int _Block_deallocator (struct Block_layout*) ;
 int latching_decr_int (int*) ;
 int printf (char*,void const*) ;
 int stub1 (struct Block_byref*) ;

__attribute__((used)) static void _Block_byref_release(const void *arg) {
    struct Block_byref *shared_struct = (struct Block_byref *)arg;
    int refcount;


    shared_struct = shared_struct->forwarding;




    if ((shared_struct->flags & BLOCK_NEEDS_FREE) == 0) {
        return;
    }
    refcount = shared_struct->flags & BLOCK_REFCOUNT_MASK;
    if (refcount <= 0) {
        printf("_Block_byref_release: Block byref data structure at %p underflowed\n", arg);
    }
    else if ((latching_decr_int(&shared_struct->flags) & BLOCK_REFCOUNT_MASK) == 0) {

        if (shared_struct->flags & BLOCK_HAS_COPY_DISPOSE) {

            (*shared_struct->byref_destroy)(shared_struct);
        }
        _Block_deallocator((struct Block_layout *)shared_struct);
    }
}
