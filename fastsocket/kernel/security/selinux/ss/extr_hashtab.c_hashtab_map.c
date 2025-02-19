
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hashtab_node {void* key; void* datum; struct hashtab_node* next; } ;
struct hashtab {size_t size; struct hashtab_node** htable; } ;



int hashtab_map(struct hashtab *h,
  int (*apply)(void *k, void *d, void *args),
  void *args)
{
 u32 i;
 int ret;
 struct hashtab_node *cur;

 if (!h)
  return 0;

 for (i = 0; i < h->size; i++) {
  cur = h->htable[i];
  while (cur) {
   ret = apply(cur->key, cur->datum, args);
   if (ret)
    return ret;
   cur = cur->next;
  }
 }
 return 0;
}
