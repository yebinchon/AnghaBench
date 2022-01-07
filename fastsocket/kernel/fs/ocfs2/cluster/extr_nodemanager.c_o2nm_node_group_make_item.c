
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct o2nm_node {struct config_item nd_item; int nd_lock; int nd_name; } ;
struct config_group {int dummy; } ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ O2NM_MAX_NAME_LEN ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct o2nm_node* kzalloc (int,int ) ;
 int o2nm_node_type ;
 int spin_lock_init (int *) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct config_item *o2nm_node_group_make_item(struct config_group *group,
           const char *name)
{
 struct o2nm_node *node = ((void*)0);

 if (strlen(name) > O2NM_MAX_NAME_LEN)
  return ERR_PTR(-ENAMETOOLONG);

 node = kzalloc(sizeof(struct o2nm_node), GFP_KERNEL);
 if (node == ((void*)0))
  return ERR_PTR(-ENOMEM);

 strcpy(node->nd_name, name);
 config_item_init_type_name(&node->nd_item, name, &o2nm_node_type);
 spin_lock_init(&node->nd_lock);

 return &node->nd_item;
}
