
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap_node {struct ebitmap_node* next; } ;
struct ebitmap {struct ebitmap_node* node; scalar_t__ highbit; } ;


 int kfree (struct ebitmap_node*) ;

void ebitmap_destroy(struct ebitmap *e)
{
 struct ebitmap_node *n, *temp;

 if (!e)
  return;

 n = e->node;
 while (n) {
  temp = n;
  n = n->next;
  kfree(temp);
 }

 e->highbit = 0;
 e->node = ((void*)0);
 return;
}
