
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int all; int children; int list; int dentry; int name; } ;
struct gcov_info {int dummy; } ;


 int GFP_KERNEL ;
 int add_links (struct gcov_node*,int ) ;
 int all_head ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (int ,int,int ,struct gcov_node*,int *) ;
 int deskew (int ) ;
 int gcov_data_fops ;
 int init_node (struct gcov_node*,struct gcov_info*,char const*,struct gcov_node*) ;
 int kfree (struct gcov_node*) ;
 struct gcov_node* kzalloc (scalar_t__,int ) ;
 int list_add (int *,int *) ;
 int pr_warning (char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct gcov_node *new_node(struct gcov_node *parent,
      struct gcov_info *info, const char *name)
{
 struct gcov_node *node;

 node = kzalloc(sizeof(struct gcov_node) + strlen(name) + 1, GFP_KERNEL);
 if (!node) {
  pr_warning("out of memory\n");
  return ((void*)0);
 }
 init_node(node, info, name, parent);

 if (info) {
  node->dentry = debugfs_create_file(deskew(node->name), 0600,
     parent->dentry, node, &gcov_data_fops);
 } else
  node->dentry = debugfs_create_dir(node->name, parent->dentry);
 if (!node->dentry) {
  pr_warning("could not create file\n");
  kfree(node);
  return ((void*)0);
 }
 if (info)
  add_links(node, parent->dentry);
 list_add(&node->list, &parent->children);
 list_add(&node->all, &all_head);

 return node;
}
