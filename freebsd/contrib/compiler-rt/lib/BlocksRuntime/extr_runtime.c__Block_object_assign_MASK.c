#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int const BLOCK_BYREF_CALLER ; 
 int const BLOCK_FIELD_IS_BLOCK ; 
 int const BLOCK_FIELD_IS_BYREF ; 
 int const BLOCK_FIELD_IS_OBJECT ; 
 int const BLOCK_FIELD_IS_WEAK ; 
 int /*<<< orphan*/  FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (void const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,int const) ; 
 void* FUNC3 (void const*,int const) ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 

void FUNC5(void *destAddr, const void *object, const int flags) {
    //printf("_Block_object_assign(*%p, %p, %x)\n", destAddr, object, flags);
    if ((flags & BLOCK_BYREF_CALLER) == BLOCK_BYREF_CALLER) {
        if ((flags & BLOCK_FIELD_IS_WEAK) == BLOCK_FIELD_IS_WEAK) {
            FUNC1(object, destAddr);
        }
        else {
            // do *not* retain or *copy* __block variables whatever they are
            FUNC0((void *)object, destAddr);
        }
    }
    else if ((flags & BLOCK_FIELD_IS_BYREF) == BLOCK_FIELD_IS_BYREF)  {
        // copying a __block reference from the stack Block to the heap
        // flags will indicate if it holds a __weak reference and needs a special isa
        FUNC2(destAddr, object, flags);
    }
    // (this test must be before next one)
    else if ((flags & BLOCK_FIELD_IS_BLOCK) == BLOCK_FIELD_IS_BLOCK) {
        // copying a Block declared variable from the stack Block to the heap
        FUNC0(FUNC3(object, flags), destAddr);
    }
    // (this test must be after previous one)
    else if ((flags & BLOCK_FIELD_IS_OBJECT) == BLOCK_FIELD_IS_OBJECT) {
        //printf("retaining object at %p\n", object);
        FUNC4(object);
        //printf("done retaining object at %p\n", object);
        FUNC0((void *)object, destAddr);
    }
}