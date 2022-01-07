
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap_node {unsigned long startbit; struct ebitmap_node* next; } ;
struct ebitmap {unsigned long highbit; struct ebitmap_node* node; } ;


 unsigned long EBITMAP_SIZE ;
 int ebitmap_node_get_bit (struct ebitmap_node*,unsigned long) ;

int ebitmap_get_bit(struct ebitmap *e, unsigned long bit)
{
 struct ebitmap_node *n;

 if (e->highbit < bit)
  return 0;

 n = e->node;
 while (n && (n->startbit <= bit)) {
  if ((n->startbit + EBITMAP_SIZE) > bit)
   return ebitmap_node_get_bit(n, bit);
  n = n->next;
 }

 return 0;
}
