
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {struct property* next; int name; } ;
struct node {struct property* proplist; } ;


 int delete_property (struct property*) ;
 scalar_t__ streq (int ,char*) ;

void delete_property_by_name(struct node *node, char *name)
{
 struct property *prop = node->proplist;

 while (prop) {
  if (streq(prop->name, name)) {
   delete_property(prop);
   return;
  }
  prop = prop->next;
 }
}
