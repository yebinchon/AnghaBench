
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct property {int dummy; } ;
struct node {int addr_cells; int size_cells; } ;
struct check {int dummy; } ;


 struct property* get_property (struct node*,char*) ;
 void* propval_cell (struct property*) ;

__attribute__((used)) static void fixup_addr_size_cells(struct check *c, struct node *dt,
      struct node *node)
{
 struct property *prop;

 node->addr_cells = -1;
 node->size_cells = -1;

 prop = get_property(node, "#address-cells");
 if (prop)
  node->addr_cells = propval_cell(prop);

 prop = get_property(node, "#size-cells");
 if (prop)
  node->size_cells = propval_cell(prop);
}
