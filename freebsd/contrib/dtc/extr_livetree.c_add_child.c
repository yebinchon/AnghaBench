
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {struct node* next_sibling; struct node* children; struct node* parent; } ;



void add_child(struct node *parent, struct node *child)
{
 struct node **p;

 child->next_sibling = ((void*)0);
 child->parent = parent;

 p = &parent->children;
 while (*p)
  p = &((*p)->next_sibling);

 *p = child;
}
