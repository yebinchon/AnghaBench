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
struct Block_layout {int flags; struct Block_descriptor* descriptor; scalar_t__ invoke; int /*<<< orphan*/ * isa; } ;
struct Block_descriptor {void* reserved; void* size; scalar_t__ dispose; scalar_t__ copy; } ;

/* Variables and functions */
 int BLOCK_HAS_COPY_DISPOSE ; 
 int BLOCK_HAS_CTOR ; 
 int BLOCK_HAS_DESCRIPTOR ; 
 int BLOCK_IS_GC ; 
 int BLOCK_NEEDS_FREE ; 
 int BLOCK_REFCOUNT_MASK ; 
 int /*<<< orphan*/ * _NSConcreteAutoBlock ; 
 int /*<<< orphan*/ * _NSConcreteFinalizingBlock ; 
 int /*<<< orphan*/ * _NSConcreteGlobalBlock ; 
 int /*<<< orphan*/ * _NSConcreteMallocBlock ; 
 int /*<<< orphan*/ * _NSConcreteStackBlock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

const char *FUNC3(const void *block) {
    struct Block_layout *closure = (struct Block_layout *)block;
    static char buffer[512];
    char *cp = buffer;
    if (closure == NULL) {
        FUNC2(cp, "NULL passed to _Block_dump\n");
        return buffer;
    }
    if (! (closure->flags & BLOCK_HAS_DESCRIPTOR)) {
        FUNC1("Block compiled by obsolete compiler, please recompile source for this Block\n");
        FUNC0(1);
    }
    cp += FUNC2(cp, "^%p (new layout) =\n", (void *)closure);
    if (closure->isa == NULL) {
        cp += FUNC2(cp, "isa: NULL\n");
    }
    else if (closure->isa == _NSConcreteStackBlock) {
        cp += FUNC2(cp, "isa: stack Block\n");
    }
    else if (closure->isa == _NSConcreteMallocBlock) {
        cp += FUNC2(cp, "isa: malloc heap Block\n");
    }
    else if (closure->isa == _NSConcreteAutoBlock) {
        cp += FUNC2(cp, "isa: GC heap Block\n");
    }
    else if (closure->isa == _NSConcreteGlobalBlock) {
        cp += FUNC2(cp, "isa: global Block\n");
    }
    else if (closure->isa == _NSConcreteFinalizingBlock) {
        cp += FUNC2(cp, "isa: finalizing Block\n");
    }
    else {
        cp += FUNC2(cp, "isa?: %p\n", (void *)closure->isa);
    }
    cp += FUNC2(cp, "flags:");
    if (closure->flags & BLOCK_HAS_DESCRIPTOR) {
        cp += FUNC2(cp, " HASDESCRIPTOR");
    }
    if (closure->flags & BLOCK_NEEDS_FREE) {
        cp += FUNC2(cp, " FREEME");
    }
    if (closure->flags & BLOCK_IS_GC) {
        cp += FUNC2(cp, " ISGC");
    }
    if (closure->flags & BLOCK_HAS_COPY_DISPOSE) {
        cp += FUNC2(cp, " HASHELP");
    }
    if (closure->flags & BLOCK_HAS_CTOR) {
        cp += FUNC2(cp, " HASCTOR");
    }
    cp += FUNC2(cp, "\nrefcount: %u\n", closure->flags & BLOCK_REFCOUNT_MASK);
    cp += FUNC2(cp, "invoke: %p\n", (void *)(uintptr_t)closure->invoke);
    {
        struct Block_descriptor *dp = closure->descriptor;
        cp += FUNC2(cp, "descriptor: %p\n", (void *)dp);
        cp += FUNC2(cp, "descriptor->reserved: %lu\n", dp->reserved);
        cp += FUNC2(cp, "descriptor->size: %lu\n", dp->size);

        if (closure->flags & BLOCK_HAS_COPY_DISPOSE) {
            cp += FUNC2(cp, "descriptor->copy helper: %p\n", (void *)(uintptr_t)dp->copy);
            cp += FUNC2(cp, "descriptor->dispose helper: %p\n", (void *)(uintptr_t)dp->dispose);
        }
    }
    return buffer;
}