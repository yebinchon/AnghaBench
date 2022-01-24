#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* allocation; size_t num_bytes; struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef  TYPE_1__ AllocationEntry ;

/* Variables and functions */
 TYPE_1__* alloc_head ; 
 TYPE_1__* alloc_tail ; 
 TYPE_1__* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 void* FUNC4 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 void* FUNC6 (size_t) ; 

void *
FUNC7(void *ptr, size_t size)
{
    AllocationEntry *entry;

    if (ptr == NULL) {
        /* By definition, this is equivalent to malloc(size) */
        return FUNC6(size);
    }
    if (size == 0) {
        /* By definition, this is equivalent to free(ptr) */
        FUNC5(ptr);
        return NULL;
    }

    /* Find the allocation entry for this memory */
    entry = FUNC0(ptr);
    if (entry == NULL) {
        FUNC3("Attempting to realloc unallocated memory at %p\n", ptr);
        entry = FUNC2(sizeof(AllocationEntry));
        if (entry == NULL) {
            FUNC3("Reallocator failure\n");
            return NULL;
        }
        entry->allocation = FUNC4(ptr, size);
        if (entry->allocation == NULL) {
            FUNC1(entry);
            return NULL;
        }

        /* Add to the list of allocations */
        entry->next = NULL;
        if (alloc_head == NULL) {
            entry->prev = NULL;
            alloc_head = alloc_tail = entry;
        } else {
            entry->prev = alloc_tail;
            alloc_tail->next = entry;
            alloc_tail = entry;
        }
    } else {
        entry->allocation = FUNC4(ptr, size);
        if (entry->allocation == NULL) {
            /* Realloc semantics say the original is still allocated */
            entry->allocation = ptr;
            return NULL;
        }
    }

    entry->num_bytes = size;
    return entry->allocation;
}