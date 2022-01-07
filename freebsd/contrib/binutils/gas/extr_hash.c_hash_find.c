
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int * data; } ;
struct hash_control {int dummy; } ;
typedef int * PTR ;


 struct hash_entry* hash_lookup (struct hash_control*,char const*,int ,int *,int *) ;
 int strlen (char const*) ;

PTR
hash_find (struct hash_control *table, const char *key)
{
  struct hash_entry *p;

  p = hash_lookup (table, key, strlen (key), ((void*)0), ((void*)0));
  if (p == ((void*)0))
    return ((void*)0);

  return p->data;
}
