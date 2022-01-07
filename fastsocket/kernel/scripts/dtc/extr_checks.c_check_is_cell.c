
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct property {TYPE_1__ val; } ;
struct node {int fullpath; } ;
struct check {char* data; } ;
typedef int cell_t ;


 int FAIL (struct check*,char*,char*,int ) ;
 struct property* get_property (struct node*,char*) ;

__attribute__((used)) static void check_is_cell(struct check *c, struct node *root,
     struct node *node)
{
 struct property *prop;
 char *propname = c->data;

 prop = get_property(node, propname);
 if (!prop)
  return;

 if (prop->val.len != sizeof(cell_t))
  FAIL(c, "\"%s\" property in %s is not a single cell",
       propname, node->fullpath);
}
