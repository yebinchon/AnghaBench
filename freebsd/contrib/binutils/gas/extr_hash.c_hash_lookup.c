
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {unsigned long hash; char* string; struct hash_entry* next; } ;
struct hash_control {unsigned long size; int string_compares; int hash_compares; struct hash_entry** table; int lookups; } ;


 scalar_t__ strncmp (char*,char const*,size_t) ;

__attribute__((used)) static struct hash_entry *
hash_lookup (struct hash_control *table, const char *key, size_t len,
      struct hash_entry ***plist, unsigned long *phash)
{
  unsigned long hash;
  size_t n;
  unsigned int c;
  unsigned int index;
  struct hash_entry **list;
  struct hash_entry *p;
  struct hash_entry *prev;





  hash = 0;
  for (n = 0; n < len; n++)
    {
      c = key[n];
      hash += c + (c << 17);
      hash ^= hash >> 2;
    }
  hash += len + (len << 17);
  hash ^= hash >> 2;

  if (phash != ((void*)0))
    *phash = hash;

  index = hash % table->size;
  list = table->table + index;

  if (plist != ((void*)0))
    *plist = list;

  prev = ((void*)0);
  for (p = *list; p != ((void*)0); p = p->next)
    {




      if (p->hash == hash)
 {




   if (strncmp (p->string, key, len) == 0 && p->string[len] == '\0')
     {
       if (prev != ((void*)0))
  {
    prev->next = p->next;
    p->next = *list;
    *list = p;
  }

       return p;
     }
 }

      prev = p;
    }

  return ((void*)0);
}
