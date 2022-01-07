
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * hashEntryPtr; scalar_t__ nextIndex; int * tablePtr; } ;
typedef int Hash_Table ;
typedef TYPE_1__ Hash_Search ;
typedef int Hash_Entry ;


 int * Hash_EnumNext (TYPE_1__*) ;

Hash_Entry *
Hash_EnumFirst(Hash_Table *t, Hash_Search *searchPtr)
{
 searchPtr->tablePtr = t;
 searchPtr->nextIndex = 0;
 searchPtr->hashEntryPtr = ((void*)0);
 return Hash_EnumNext(searchPtr);
}
