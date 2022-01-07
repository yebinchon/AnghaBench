
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int fullpath; int * name; } ;
struct dt_info {int dummy; } ;
struct check {int data; } ;


 int FAIL (struct check*,struct dt_info*,char*,int ,int ) ;
 int strlen (int *) ;
 int strspn (int *,int ) ;

__attribute__((used)) static void check_node_name_chars(struct check *c, struct dt_info *dti,
      struct node *node)
{
 int n = strspn(node->name, c->data);

 if (n < strlen(node->name))
  FAIL(c, dti, "Bad character '%c' in node %s",
       node->name[n], node->fullpath);
}
