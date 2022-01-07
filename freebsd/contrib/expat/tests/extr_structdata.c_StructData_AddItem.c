
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int XML_Char ;
struct TYPE_7__ {size_t count; size_t max_count; TYPE_1__* entries; } ;
struct TYPE_6__ {int data0; int data1; int data2; int str; } ;
typedef TYPE_1__ StructDataEntry ;
typedef TYPE_2__ StructData ;


 scalar_t__ STRUCT_EXTENSION_COUNT ;
 int assert (int ) ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 int xmlstrdup (int const*) ;

void
StructData_AddItem(StructData *storage,
                   const XML_Char *s,
                   int data0,
                   int data1,
                   int data2)
{
    StructDataEntry *entry;

    assert(storage != ((void*)0));
    assert(s != ((void*)0));
    if (storage->count == storage->max_count) {
        StructDataEntry *new;

        storage->max_count += STRUCT_EXTENSION_COUNT;
        new = realloc(storage->entries,
                      storage->max_count * sizeof(StructDataEntry));
        assert(new != ((void*)0));
        storage->entries = new;
    }

    entry = &storage->entries[storage->count];
    entry->str = xmlstrdup(s);
    entry->data0 = data0;
    entry->data1 = data1;
    entry->data2 = data2;
    storage->count++;
}
