
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocation; scalar_t__ num_bytes; struct TYPE_3__* next; } ;
typedef TYPE_1__ AllocationEntry ;


 TYPE_1__* alloc_head ;
 int printf (char*,unsigned long,int ) ;

int
tracking_report(void)
{
    AllocationEntry *entry;

    if (alloc_head == ((void*)0))
        return 1;


    for (entry = alloc_head; entry != ((void*)0); entry = entry->next)
    {
        printf("Allocated %lu bytes at %p\n",
                (long unsigned)entry->num_bytes, entry->allocation);
    }
    return 0;
}
