
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ebitmap_node {scalar_t__ startbit; struct ebitmap_node* next; int maps; } ;
struct ebitmap {scalar_t__ highbit; struct ebitmap_node* node; } ;


 int EBITMAP_SIZE ;
 int memcmp (int ,int ,int) ;

int ebitmap_cmp(struct ebitmap *e1, struct ebitmap *e2)
{
 struct ebitmap_node *n1, *n2;

 if (e1->highbit != e2->highbit)
  return 0;

 n1 = e1->node;
 n2 = e2->node;
 while (n1 && n2 &&
        (n1->startbit == n2->startbit) &&
        !memcmp(n1->maps, n2->maps, EBITMAP_SIZE / 8)) {
  n1 = n1->next;
  n2 = n2->next;
 }

 if (n1 || n2)
  return 0;

 return 1;
}
