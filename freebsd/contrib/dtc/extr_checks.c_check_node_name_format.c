
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int fullpath; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;


 int FAIL (struct check*,struct dt_info*,char*,int ) ;
 int get_unitname (struct node*) ;
 scalar_t__ strchr (int ,char) ;

__attribute__((used)) static void check_node_name_format(struct check *c, struct dt_info *dti,
       struct node *node)
{
 if (strchr(get_unitname(node), '@'))
  FAIL(c, dti, "Node %s has multiple '@' characters in name",
       node->fullpath);
}
