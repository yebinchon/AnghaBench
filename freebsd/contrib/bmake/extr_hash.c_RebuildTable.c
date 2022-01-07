
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int namehash; struct TYPE_7__* next; } ;
struct TYPE_6__ {int size; int mask; TYPE_2__** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;
typedef TYPE_2__ Hash_Entry ;


 TYPE_2__** bmake_malloc (int) ;
 int free (TYPE_2__**) ;

__attribute__((used)) static void
RebuildTable(Hash_Table *t)
{
 Hash_Entry *e, *next = ((void*)0), **hp, **xp;
 int i, mask;
        Hash_Entry **oldhp;
 int oldsize;

 oldhp = t->bucketPtr;
 oldsize = i = t->size;
 i <<= 1;
 t->size = i;
 t->mask = mask = i - 1;
 t->bucketPtr = hp = bmake_malloc(sizeof(*hp) * i);
 while (--i >= 0)
  *hp++ = ((void*)0);
 for (hp = oldhp, i = oldsize; --i >= 0;) {
  for (e = *hp++; e != ((void*)0); e = next) {
   next = e->next;
   xp = &t->bucketPtr[e->namehash & mask];
   e->next = *xp;
   *xp = e;
  }
 }
 free(oldhp);
}
