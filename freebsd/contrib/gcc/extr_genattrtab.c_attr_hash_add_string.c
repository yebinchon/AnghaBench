
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str; } ;
struct attr_hash {int hashcode; struct attr_hash* next; TYPE_1__ u; } ;


 int RTL_HASH_SIZE ;
 struct attr_hash** attr_hash_table ;
 int hash_obstack ;
 struct attr_hash* obstack_alloc (int ,int) ;

__attribute__((used)) static void
attr_hash_add_string (int hashcode, char *str)
{
  struct attr_hash *h;

  h = obstack_alloc (hash_obstack, sizeof (struct attr_hash));
  h->hashcode = -hashcode;
  h->u.str = str;
  h->next = attr_hash_table[hashcode % RTL_HASH_SIZE];
  attr_hash_table[hashcode % RTL_HASH_SIZE] = h;
}
