
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int fullpath; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;


 int FAIL (struct check*,struct dt_info*,char*,int ) ;
 struct property* get_property (struct node*,char*) ;
 char* get_unitname (struct node*) ;

__attribute__((used)) static void check_unit_address_vs_reg(struct check *c, struct dt_info *dti,
          struct node *node)
{
 const char *unitname = get_unitname(node);
 struct property *prop = get_property(node, "reg");

 if (!prop) {
  prop = get_property(node, "ranges");
  if (prop && !prop->val.len)
   prop = ((void*)0);
 }

 if (prop) {
  if (!unitname[0])
   FAIL(c, dti, "Node %s has a reg or ranges property, but no unit name",
       node->fullpath);
 } else {
  if (unitname[0])
   FAIL(c, dti, "Node %s has a unit name, but no reg property",
       node->fullpath);
 }
}
