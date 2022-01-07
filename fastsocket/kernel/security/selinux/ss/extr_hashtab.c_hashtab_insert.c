
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct hashtab_node {struct hashtab_node* next; void* datum; void* key; } ;
struct hashtab {scalar_t__ nel; size_t (* hash_value ) (struct hashtab*,void*) ;scalar_t__ (* keycmp ) (struct hashtab*,void*,void*) ;struct hashtab_node** htable; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ HASHTAB_MAX_NODES ;
 struct hashtab_node* kzalloc (int,int ) ;
 size_t stub1 (struct hashtab*,void*) ;
 scalar_t__ stub2 (struct hashtab*,void*,void*) ;
 scalar_t__ stub3 (struct hashtab*,void*,void*) ;

int hashtab_insert(struct hashtab *h, void *key, void *datum)
{
 u32 hvalue;
 struct hashtab_node *prev, *cur, *newnode;

 if (!h || h->nel == HASHTAB_MAX_NODES)
  return -EINVAL;

 hvalue = h->hash_value(h, key);
 prev = ((void*)0);
 cur = h->htable[hvalue];
 while (cur && h->keycmp(h, key, cur->key) > 0) {
  prev = cur;
  cur = cur->next;
 }

 if (cur && (h->keycmp(h, key, cur->key) == 0))
  return -EEXIST;

 newnode = kzalloc(sizeof(*newnode), GFP_KERNEL);
 if (newnode == ((void*)0))
  return -ENOMEM;
 newnode->key = key;
 newnode->datum = datum;
 if (prev) {
  newnode->next = prev->next;
  prev->next = newnode;
 } else {
  newnode->next = h->htable[hvalue];
  h->htable[hvalue] = newnode;
 }

 h->nel++;
 return 0;
}
