
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t num_bytes; void* allocation; struct TYPE_5__* next; struct TYPE_5__* prev; } ;
typedef TYPE_1__ AllocationEntry ;


 TYPE_1__* alloc_head ;
 TYPE_1__* alloc_tail ;
 int free (TYPE_1__*) ;
 void* malloc (size_t) ;
 int printf (char*) ;

void *
tracking_malloc(size_t size)
{
    AllocationEntry *entry = malloc(sizeof(AllocationEntry));

    if (entry == ((void*)0)) {
        printf("Allocator failure\n");
        return ((void*)0);
    }
    entry->num_bytes = size;
    entry->allocation = malloc(size);
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

    return entry->allocation;
}
