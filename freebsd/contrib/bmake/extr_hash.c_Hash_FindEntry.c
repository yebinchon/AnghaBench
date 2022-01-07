
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int namehash; int name; struct TYPE_6__* next; } ;
struct TYPE_5__ {unsigned int mask; TYPE_2__** bucketPtr; } ;
typedef TYPE_1__ Hash_Table ;
typedef TYPE_2__ Hash_Entry ;


 scalar_t__ strcmp (int ,char const*) ;

Hash_Entry *
Hash_FindEntry(Hash_Table *t, const char *key)
{
 Hash_Entry *e;
 unsigned h;
 const char *p;

 if (t == ((void*)0) || t->bucketPtr == ((void*)0)) {
     return ((void*)0);
 }
 for (h = 0, p = key; *p;)
  h = (h << 5) - h + *p++;
 p = key;
 for (e = t->bucketPtr[h & t->mask]; e != ((void*)0); e = e->next)
  if (e->namehash == h && strcmp(e->name, p) == 0)
   return (e);
 return ((void*)0);
}
