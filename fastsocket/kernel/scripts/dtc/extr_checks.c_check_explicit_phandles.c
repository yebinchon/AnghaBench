
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int phandle; int fullpath; } ;
struct check {int dummy; } ;
typedef int cell_t ;


 int FAIL (struct check*,char*,int ,int,...) ;
 struct node* get_node_by_phandle (struct node*,int) ;
 struct property* get_property (struct node*,char*) ;
 int propval_cell (struct property*) ;

__attribute__((used)) static void check_explicit_phandles(struct check *c, struct node *root,
       struct node *node)
{
 struct property *prop;
 struct node *other;
 cell_t phandle;

 prop = get_property(node, "linux,phandle");
 if (! prop)
  return;

 if (prop->val.len != sizeof(cell_t)) {
  FAIL(c, "%s has bad length (%d) linux,phandle property",
       node->fullpath, prop->val.len);
  return;
 }

 phandle = propval_cell(prop);
 if ((phandle == 0) || (phandle == -1)) {
  FAIL(c, "%s has invalid linux,phandle value 0x%x",
       node->fullpath, phandle);
  return;
 }

 other = get_node_by_phandle(root, phandle);
 if (other) {
  FAIL(c, "%s has duplicated phandle 0x%x (seen before at %s)",
       node->fullpath, phandle, other->fullpath);
  return;
 }

 node->phandle = phandle;
}
