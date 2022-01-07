
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int * name; } ;
struct node {int fullpath; } ;
struct check {int data; } ;


 int FAIL (struct check*,char*,int ,int *,int ) ;
 int strlen (int *) ;
 int strspn (int *,int ) ;

__attribute__((used)) static void check_property_name_chars(struct check *c, struct node *dt,
          struct node *node, struct property *prop)
{
 int n = strspn(prop->name, c->data);

 if (n < strlen(prop->name))
  FAIL(c, "Bad character '%c' in property name \"%s\", node %s",
       prop->name[n], prop->name, node->fullpath);
}
