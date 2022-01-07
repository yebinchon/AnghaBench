
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; } ;


 int assert (int ) ;

struct property *chain_property(struct property *first, struct property *list)
{
 assert(first->next == ((void*)0));

 first->next = list;
 return first;
}
