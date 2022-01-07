
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int * data; struct hash_entry* next; } ;
struct hash_control {int deletions; } ;
typedef int * PTR ;


 int abort () ;
 struct hash_entry* hash_lookup (struct hash_control*,char const*,int ,struct hash_entry***,int *) ;
 int strlen (char const*) ;

PTR
hash_delete (struct hash_control *table, const char *key)
{
  struct hash_entry *p;
  struct hash_entry **list;

  p = hash_lookup (table, key, strlen (key), &list, ((void*)0));
  if (p == ((void*)0))
    return ((void*)0);

  if (p != *list)
    abort ();





  *list = p->next;





  return p->data;
}
