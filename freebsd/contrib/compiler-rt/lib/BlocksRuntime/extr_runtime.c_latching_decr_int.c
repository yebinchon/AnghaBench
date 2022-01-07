
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLOCK_REFCOUNT_MASK ;
 scalar_t__ OSAtomicCompareAndSwapInt (int,int,int volatile*) ;

__attribute__((used)) static int latching_decr_int(int *where) {
    while (1) {
        int old_value = *(volatile int *)where;
        if ((old_value & BLOCK_REFCOUNT_MASK) == BLOCK_REFCOUNT_MASK) {
            return BLOCK_REFCOUNT_MASK;
        }
        if ((old_value & BLOCK_REFCOUNT_MASK) == 0) {
            return 0;
        }
        if (OSAtomicCompareAndSwapInt(old_value, old_value-1, (volatile int *)where)) {
            return old_value-1;
        }
    }
}
