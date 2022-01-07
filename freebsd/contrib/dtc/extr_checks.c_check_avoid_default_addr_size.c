
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct property {int dummy; } ;
struct node {int fullpath; TYPE_1__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
struct TYPE_2__ {int addr_cells; int size_cells; } ;


 int FAIL (struct check*,struct dt_info*,char*,int ) ;
 struct property* get_property (struct node*,char*) ;

__attribute__((used)) static void check_avoid_default_addr_size(struct check *c, struct dt_info *dti,
       struct node *node)
{
 struct property *reg, *ranges;

 if (!node->parent)
  return;

 reg = get_property(node, "reg");
 ranges = get_property(node, "ranges");

 if (!reg && !ranges)
  return;

 if (node->parent->addr_cells == -1)
  FAIL(c, dti, "Relying on default #address-cells value for %s",
       node->fullpath);

 if (node->parent->size_cells == -1)
  FAIL(c, dti, "Relying on default #size-cells value for %s",
       node->fullpath);
}
