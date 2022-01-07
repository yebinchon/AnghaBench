
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct Hash_Entry {int dummy; } ;
struct TYPE_3__ {int size; int mask; struct Hash_Entry** bucketPtr; scalar_t__ numEntries; } ;
typedef TYPE_1__ Hash_Table ;


 struct Hash_Entry** bmake_malloc (int) ;

void
Hash_InitTable(Hash_Table *t, int numBuckets)
{
 int i;
 struct Hash_Entry **hp;




 if (numBuckets <= 0)
  i = 16;
 else {
  for (i = 2; i < numBuckets; i <<= 1)
    continue;
 }
 t->numEntries = 0;
 t->size = i;
 t->mask = i - 1;
 t->bucketPtr = hp = bmake_malloc(sizeof(*hp) * i);
 while (--i >= 0)
  *hp++ = ((void*)0);
}
