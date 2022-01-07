
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; } ;



struct property *reverse_properties(struct property *first)
{
 struct property *p = first;
 struct property *head = ((void*)0);
 struct property *next;

 while (p) {
  next = p->next;
  p->next = head;
  head = p;
  p = next;
 }
 return head;
}
