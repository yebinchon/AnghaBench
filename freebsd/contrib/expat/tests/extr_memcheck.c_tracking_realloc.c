
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* allocation; size_t num_bytes; struct TYPE_7__* next; struct TYPE_7__* prev; } ;
typedef TYPE_1__ AllocationEntry ;


 TYPE_1__* alloc_head ;
 TYPE_1__* alloc_tail ;
 TYPE_1__* find_allocation (void*) ;
 int free (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;
 int printf (char*,...) ;
 void* realloc (void*,size_t) ;
 int tracking_free (void*) ;
 void* tracking_malloc (size_t) ;

void *
tracking_realloc(void *ptr, size_t size)
{
    AllocationEntry *entry;

    if (ptr == ((void*)0)) {

        return tracking_malloc(size);
    }
    if (size == 0) {

        tracking_free(ptr);
        return ((void*)0);
    }


    entry = find_allocation(ptr);
    if (entry == ((void*)0)) {
        printf("Attempting to realloc unallocated memory at %p\n", ptr);
        entry = malloc(sizeof(AllocationEntry));
        if (entry == ((void*)0)) {
            printf("Reallocator failure\n");
            return ((void*)0);
        }
        entry->allocation = realloc(ptr, size);
        if (entry->allocation == ((void*)0)) {
            free(entry);
            return ((void*)0);
        }


        entry->next = ((void*)0);
        if (alloc_head == ((void*)0)) {
            entry->prev = ((void*)0);
            alloc_head = alloc_tail = entry;
        } else {
            entry->prev = alloc_tail;
            alloc_tail->next = entry;
            alloc_tail = entry;
        }
    } else {
        entry->allocation = realloc(ptr, size);
        if (entry->allocation == ((void*)0)) {

            entry->allocation = ptr;
            return ((void*)0);
        }
    }

    entry->num_bytes = size;
    return entry->allocation;
}
