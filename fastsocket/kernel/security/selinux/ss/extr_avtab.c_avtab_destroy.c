
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct avtab_node {struct avtab_node* next; } ;
struct avtab {int nslot; scalar_t__ mask; struct avtab_node** htable; } ;


 int avtab_node_cachep ;
 int kfree (struct avtab_node**) ;
 int kmem_cache_free (int ,struct avtab_node*) ;

void avtab_destroy(struct avtab *h)
{
 int i;
 struct avtab_node *cur, *temp;

 if (!h || !h->htable)
  return;

 for (i = 0; i < h->nslot; i++) {
  cur = h->htable[i];
  while (cur) {
   temp = cur;
   cur = cur->next;
   kmem_cache_free(avtab_node_cachep, temp);
  }
  h->htable[i] = ((void*)0);
 }
 kfree(h->htable);
 h->htable = ((void*)0);
 h->nslot = 0;
 h->mask = 0;
}
