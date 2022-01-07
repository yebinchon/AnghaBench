
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int dummy; } ;
struct gcov_info {int filename; } ;
typedef enum gcov_action { ____Placeholder_gcov_action } gcov_action ;




 int add_node (struct gcov_info*) ;
 int gcov_persist ;
 struct gcov_node* get_node_by_name (int ) ;
 int ghost_node (struct gcov_node*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int node_lock ;
 int pr_warning (char*,int ) ;
 int remove_node (struct gcov_node*) ;
 int revive_node (struct gcov_node*,struct gcov_info*) ;

void gcov_event(enum gcov_action action, struct gcov_info *info)
{
 struct gcov_node *node;

 mutex_lock(&node_lock);
 node = get_node_by_name(info->filename);
 switch (action) {
 case 129:

  if (!node) {
   add_node(info);
   break;
  }
  if (gcov_persist)
   revive_node(node, info);
  else {
   pr_warning("could not add '%s' (already exists)\n",
       info->filename);
  }
  break;
 case 128:

  if (!node) {
   pr_warning("could not remove '%s' (not found)\n",
       info->filename);
   break;
  }
  if (gcov_persist) {
   if (!ghost_node(node))
    break;
  }
  remove_node(node);
  break;
 }
 mutex_unlock(&node_lock);
}
