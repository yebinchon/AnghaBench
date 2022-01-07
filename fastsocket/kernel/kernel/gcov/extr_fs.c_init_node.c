
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int name; struct gcov_node* parent; struct gcov_info* info; int all; int children; int list; } ;
struct gcov_info {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int strcpy (int ,char const*) ;

__attribute__((used)) static void init_node(struct gcov_node *node, struct gcov_info *info,
        const char *name, struct gcov_node *parent)
{
 INIT_LIST_HEAD(&node->list);
 INIT_LIST_HEAD(&node->children);
 INIT_LIST_HEAD(&node->all);
 node->info = info;
 node->parent = parent;
 if (name)
  strcpy(node->name, name);
}
