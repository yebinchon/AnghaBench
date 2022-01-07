
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* allocation; struct TYPE_4__* next; } ;
typedef TYPE_1__ AllocationEntry ;


 TYPE_1__* alloc_head ;

__attribute__((used)) static AllocationEntry *
find_allocation(void *ptr)
{
    AllocationEntry *entry;

    for (entry = alloc_head; entry != ((void*)0); entry = entry->next) {
        if (entry->allocation == ptr) {
            return entry;
        }
    }
    return ((void*)0);
}
