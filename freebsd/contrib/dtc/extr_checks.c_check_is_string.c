
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int val; } ;
struct node {int fullpath; } ;
struct dt_info {int dummy; } ;
struct check {char* data; } ;


 int FAIL (struct check*,struct dt_info*,char*,char*,int ) ;
 int data_is_one_string (int ) ;
 struct property* get_property (struct node*,char*) ;

__attribute__((used)) static void check_is_string(struct check *c, struct dt_info *dti,
       struct node *node)
{
 struct property *prop;
 char *propname = c->data;

 prop = get_property(node, propname);
 if (!prop)
  return;

 if (!data_is_one_string(prop->val))
  FAIL(c, dti, "\"%s\" property in %s is not a string",
       propname, node->fullpath);
}
