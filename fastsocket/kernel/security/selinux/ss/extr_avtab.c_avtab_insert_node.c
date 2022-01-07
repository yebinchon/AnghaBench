
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avtab_datum {int dummy; } ;
struct avtab_key {int dummy; } ;
struct avtab_node {struct avtab_node* next; struct avtab_datum datum; struct avtab_key key; } ;
struct avtab {int nel; struct avtab_node** htable; } ;


 int GFP_KERNEL ;
 int avtab_node_cachep ;
 struct avtab_node* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct avtab_node*
avtab_insert_node(struct avtab *h, int hvalue,
    struct avtab_node *prev, struct avtab_node *cur,
    struct avtab_key *key, struct avtab_datum *datum)
{
 struct avtab_node *newnode;
 newnode = kmem_cache_zalloc(avtab_node_cachep, GFP_KERNEL);
 if (newnode == ((void*)0))
  return ((void*)0);
 newnode->key = *key;
 newnode->datum = *datum;
 if (prev) {
  newnode->next = prev->next;
  prev->next = newnode;
 } else {
  newnode->next = h->htable[hvalue];
  h->htable[hvalue] = newnode;
 }

 h->nel++;
 return newnode;
}
