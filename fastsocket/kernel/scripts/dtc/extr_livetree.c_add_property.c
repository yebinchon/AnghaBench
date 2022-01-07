
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; } ;
struct node {struct property* proplist; } ;



void add_property(struct node *node, struct property *prop)
{
 struct property **p;

 prop->next = ((void*)0);

 p = &node->proplist;
 while (*p)
  p = &((*p)->next);

 *p = prop;
}
