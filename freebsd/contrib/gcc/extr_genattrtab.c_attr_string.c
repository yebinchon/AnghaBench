
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* str; } ;
struct attr_hash {int hashcode; TYPE_1__ u; struct attr_hash* next; } ;


 int RTL_HASH_SIZE ;
 int attr_hash_add_string (int,char*) ;
 struct attr_hash** attr_hash_table ;
 int hash_obstack ;
 int memcpy (char*,char const*,int) ;
 char* obstack_alloc (int ,int) ;
 int strncmp (char const*,char const*,int) ;

__attribute__((used)) static char *
attr_string (const char *str, int len)
{
  struct attr_hash *h;
  int hashcode;
  int i;
  char *new_str;


  hashcode = (len + 1) * 613 + (unsigned) str[0];
  for (i = 1; i < len; i += 2)
    hashcode = ((hashcode * 613) + (unsigned) str[i]);
  if (hashcode < 0)
    hashcode = -hashcode;


  for (h = attr_hash_table[hashcode % RTL_HASH_SIZE]; h; h = h->next)
    if (h->hashcode == -hashcode && h->u.str[0] == str[0]
 && !strncmp (h->u.str, str, len))
      return h->u.str;


  new_str = obstack_alloc (hash_obstack, len + 1);
  memcpy (new_str, str, len);
  new_str[len] = '\0';
  attr_hash_add_string (hashcode, new_str);

  return new_str;
}
