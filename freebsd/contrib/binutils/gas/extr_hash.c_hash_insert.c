
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {char const* string; unsigned long hash; struct hash_entry* next; int data; } ;
struct hash_control {int memory; int insertions; } ;
typedef int PTR ;


 struct hash_entry* hash_lookup (struct hash_control*,char const*,int ,struct hash_entry***,unsigned long*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int strlen (char const*) ;

const char *
hash_insert (struct hash_control *table, const char *key, PTR value)
{
  struct hash_entry *p;
  struct hash_entry **list;
  unsigned long hash;

  p = hash_lookup (table, key, strlen (key), &list, &hash);
  if (p != ((void*)0))
    return "exists";





  p = (struct hash_entry *) obstack_alloc (&table->memory, sizeof (*p));
  p->string = key;
  p->hash = hash;
  p->data = value;

  p->next = *list;
  *list = p;

  return ((void*)0);
}
