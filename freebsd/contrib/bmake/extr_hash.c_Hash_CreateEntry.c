
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct Hash_Entry {unsigned int namehash; int name; struct Hash_Entry* next; } ;
struct TYPE_4__ {unsigned int mask; int numEntries; int size; struct Hash_Entry** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;
typedef struct Hash_Entry Hash_Entry ;
typedef int Boolean ;


 int FALSE ;
 int Hash_SetValue (struct Hash_Entry*,int *) ;
 int RebuildTable (TYPE_1__*) ;
 int TRUE ;
 struct Hash_Entry* bmake_malloc (int) ;
 int rebuildLimit ;
 scalar_t__ strcmp (int ,char const*) ;
 int strcpy (int ,char const*) ;

Hash_Entry *
Hash_CreateEntry(Hash_Table *t, const char *key, Boolean *newPtr)
{
 Hash_Entry *e;
 unsigned h;
 const char *p;
 int keylen;
 struct Hash_Entry **hp;





 for (h = 0, p = key; *p;)
  h = (h << 5) - h + *p++;
 keylen = p - key;
 p = key;
 for (e = t->bucketPtr[h & t->mask]; e != ((void*)0); e = e->next) {
  if (e->namehash == h && strcmp(e->name, p) == 0) {
   if (newPtr != ((void*)0))
    *newPtr = FALSE;
   return (e);
  }
 }






 if (t->numEntries >= rebuildLimit * t->size)
  RebuildTable(t);
 e = bmake_malloc(sizeof(*e) + keylen);
 hp = &t->bucketPtr[h & t->mask];
 e->next = *hp;
 *hp = e;
 Hash_SetValue(e, ((void*)0));
 e->namehash = h;
 (void)strcpy(e->name, p);
 t->numEntries++;

 if (newPtr != ((void*)0))
  *newPtr = TRUE;
 return (e);
}
