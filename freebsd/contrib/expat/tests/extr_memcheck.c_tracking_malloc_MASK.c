#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t num_bytes; void* allocation; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ AllocationEntry ;

/* Variables and functions */
 TYPE_1__* alloc_head ; 
 TYPE_1__* alloc_tail ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void *
FUNC3(size_t size)
{
    AllocationEntry *entry = FUNC1(sizeof(AllocationEntry));

    if (entry == NULL) {
        FUNC2("Allocator failure\n");
        return NULL;
    }
    entry->num_bytes = size;
    entry->allocation = FUNC1(size);
    if (entry->allocation == NULL) {
        FUNC0(entry);
        return NULL;
    }
    entry->next = NULL;

    /* Add to the list of allocations */
    if (alloc_head == NULL) {
        entry->prev = NULL;
        alloc_head = alloc_tail = entry;
    } else {
        entry->prev = alloc_tail;
        alloc_tail->next = entry;
        alloc_tail = entry;
    }

    return entry->allocation;
}