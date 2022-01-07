
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * entries; scalar_t__ max_count; scalar_t__ count; } ;
typedef TYPE_1__ StructData ;


 int assert (int ) ;

void
StructData_Init(StructData *storage)
{
    assert(storage != ((void*)0));
    storage->count = 0;
    storage->max_count = 0;
    storage->entries = ((void*)0);
}
