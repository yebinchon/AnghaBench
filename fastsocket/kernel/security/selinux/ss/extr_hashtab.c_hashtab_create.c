
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hashtab {int size; int (* hash_value ) (struct hashtab*,void const*) ;int (* keycmp ) (struct hashtab*,void const*,void const*) ;int ** htable; scalar_t__ nel; } ;


 int GFP_KERNEL ;
 int kfree (struct hashtab*) ;
 int ** kmalloc (int,int ) ;
 struct hashtab* kzalloc (int,int ) ;

struct hashtab *hashtab_create(u32 (*hash_value)(struct hashtab *h, const void *key),
          int (*keycmp)(struct hashtab *h, const void *key1, const void *key2),
          u32 size)
{
 struct hashtab *p;
 u32 i;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (p == ((void*)0))
  return p;

 p->size = size;
 p->nel = 0;
 p->hash_value = hash_value;
 p->keycmp = keycmp;
 p->htable = kmalloc(sizeof(*(p->htable)) * size, GFP_KERNEL);
 if (p->htable == ((void*)0)) {
  kfree(p);
  return ((void*)0);
 }

 for (i = 0; i < size; i++)
  p->htable[i] = ((void*)0);

 return p;
}
