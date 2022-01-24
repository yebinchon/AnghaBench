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
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (void const*) ; 

void FUNC3(const void *object, const int flags) {
    //printf("_Block_object_dispose(%p, %x)\n", object, flags);
    if (flags & BLOCK_FIELD_IS_BYREF)  {
        // get rid of the __block data structure held in a Block
        FUNC0(object);
    }
    else if ((flags & (BLOCK_FIELD_IS_BLOCK|BLOCK_BYREF_CALLER)) == BLOCK_FIELD_IS_BLOCK) {
        // get rid of a referenced Block held by this Block
        // (ignore __block Block variables, compiler doesn't need to call us)
        FUNC1(object);
    }
    else if ((flags & (BLOCK_FIELD_IS_WEAK|BLOCK_FIELD_IS_BLOCK|BLOCK_BYREF_CALLER)) == BLOCK_FIELD_IS_OBJECT) {
        // get rid of a referenced object held by this Block
        // (ignore __block object variables, compiler doesn't need to call us)
        FUNC2(object);
    }
}