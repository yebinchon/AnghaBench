
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct Block_layout {int flags; TYPE_1__* descriptor; } ;
typedef int int32_t ;
struct TYPE_2__ {int (* dispose ) (struct Block_layout*) ;} ;


 int BLOCK_HAS_COPY_DISPOSE ;
 int BLOCK_IS_GC ;
 int BLOCK_IS_GLOBAL ;
 int BLOCK_NEEDS_FREE ;
 int BLOCK_REFCOUNT_MASK ;
 int _Block_deallocator (struct Block_layout*) ;
 int _Block_setHasRefcount (struct Block_layout*,int) ;
 int latching_decr_int (int*) ;
 int printf (char*,void*) ;
 int stub1 (struct Block_layout*) ;

void _Block_release(void *arg) {
    struct Block_layout *aBlock = (struct Block_layout *)arg;
    int32_t newCount;
    if (!aBlock) return;
    newCount = latching_decr_int(&aBlock->flags) & BLOCK_REFCOUNT_MASK;
    if (newCount > 0) return;

    if (aBlock->flags & BLOCK_IS_GC) {



        _Block_setHasRefcount(aBlock, 0);
    }
    else if (aBlock->flags & BLOCK_NEEDS_FREE) {
        if (aBlock->flags & BLOCK_HAS_COPY_DISPOSE)(*aBlock->descriptor->dispose)(aBlock);
        _Block_deallocator(aBlock);
    }
    else if (aBlock->flags & BLOCK_IS_GLOBAL) {
        ;
    }
    else {
        printf("Block_release called upon a stack Block: %p, ignored\n", (void *)aBlock);
    }
}
