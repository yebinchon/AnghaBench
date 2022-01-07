
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; } ;
typedef TYPE_1__ CharData ;


 int assert (int ) ;

void
CharData_Init(CharData *storage)
{
    assert(storage != ((void*)0));
    storage->count = -1;
}
