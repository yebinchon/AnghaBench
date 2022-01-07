
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; int val; } ;
struct property {TYPE_1__ val; struct property* name; struct property* next; } ;
struct node {int fullpath; int basenamelen; int name; struct property* proplist; } ;
struct check {int dummy; } ;


 int FAIL (struct check*,char*,int ,int ) ;
 int data_free (TYPE_1__) ;
 int free (struct property*) ;
 scalar_t__ memcmp (int ,int ,int ) ;
 scalar_t__ streq (struct property*,char*) ;

__attribute__((used)) static void check_name_properties(struct check *c, struct node *root,
      struct node *node)
{
 struct property **pp, *prop = ((void*)0);

 for (pp = &node->proplist; *pp; pp = &((*pp)->next))
  if (streq((*pp)->name, "name")) {
   prop = *pp;
   break;
  }

 if (!prop)
  return;

 if ((prop->val.len != node->basenamelen+1)
     || (memcmp(prop->val.val, node->name, node->basenamelen) != 0)) {
  FAIL(c, "\"name\" property in %s is incorrect (\"%s\" instead"
       " of base node name)", node->fullpath, prop->val.val);
 } else {


  *pp = prop->next;
  free(prop->name);
  data_free(prop->val);
  free(prop);
 }
}
