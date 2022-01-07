
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {char const* string; unsigned long hash; struct hash_entry* next; void* data; } ;
struct hash_control {int memory; int insertions; int replacements; } ;
typedef void* PTR ;


 struct hash_entry* hash_lookup (struct hash_control*,char const*,int ,struct hash_entry***,unsigned long*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int strlen (char const*) ;

const char *
hash_jam (struct hash_control *table, const char *key, PTR value)
{
  struct hash_entry *p;
  struct hash_entry **list;
  unsigned long hash;

  p = hash_lookup (table, key, strlen (key), &list, &hash);
  if (p != ((void*)0))
    {




      p->data = value;
    }
  else
    {




      p = (struct hash_entry *) obstack_alloc (&table->memory, sizeof (*p));
      p->string = key;
      p->hash = hash;
      p->data = value;

      p->next = *list;
      *list = p;
    }

  return ((void*)0);
}
